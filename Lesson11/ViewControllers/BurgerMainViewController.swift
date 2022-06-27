//
//  BurgerMainViewController.swift
//  Lesson11
//
//  Created by Мурад Чеерчиев on 26.06.2022.
//

import UIKit
import SnapKit

class BurgerMainViewController: UIViewController {
    let burgers = supportBurgers

    override func viewDidLoad() {
        super.viewDidLoad()
        initializate()
    }
    
    private func initializate() {
        createSubviews()
    }
}

//MARK: UI
extension BurgerMainViewController {
    private func createSubviews() {
        var subviews = [UIView]()
        for burger in burgers {
            let burgerView
            = ProductView(product: burger.name,
                          description: burger.description,
                          imageName: burger.imageName)
            subviews.append(burgerView)
            view.addSubview(burgerView)
        }
        makeConstraints(subviews: subviews)
    }
}

//MARK: Methods
extension BurgerMainViewController {
    
}

//MARK: Constraints
extension BurgerMainViewController {
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
