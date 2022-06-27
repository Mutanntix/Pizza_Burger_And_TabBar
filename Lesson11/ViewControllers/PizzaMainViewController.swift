//
//  ViewController.swift
//  Lesson11
//
//  Created by Мурад Чеерчиев on 26.06.2022.
//

import UIKit
import SnapKit

class PizzaMainViewController: UIViewController {
    let pizza = supportPizza

    override func viewDidLoad() {
        super.viewDidLoad()
        initializate()
    }
    
    private func initializate() {
        createSubviews()
    }
}

//MARK: UI
extension PizzaMainViewController {
    private func createSubviews() {
        var subviews = [UIView]()
        for pizza in pizza {
            let pizzaView
            = ProductView(product: pizza.name,
                          description: pizza.description,
                          imageName: pizza.imageName)
            subviews.append(pizzaView)
            view.addSubview(pizzaView)
        }
        makeConstraints(subviews: subviews)
    }
}

//MARK: Methods
extension PizzaMainViewController {
    
}

//MARK: Constraints
extension PizzaMainViewController {
    private func makeConstraints(subviews: [UIView]) {
        for (i, subview) in subviews.enumerated() {
            subview.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.width.equalToSuperview().multipliedBy(0.95)
                make.height.equalToSuperview()
                    .multipliedBy(0.2)
                guard i > 0
                else {
                    make.top.equalToSuperview().inset(120)
                    return
                }
                make.topMargin.equalTo(subviews[i - 1].snp_bottomMargin).inset(-20)
            }
        }
    }
}
