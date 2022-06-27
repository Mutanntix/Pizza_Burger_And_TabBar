//
//  ProductView.swift
//  Lesson11
//
//  Created by Мурад Чеерчиев on 27.06.2022.
//

import UIKit

class ProductView: UIView {
    private let productNameLabel
    = HeaderLabel(fontColor: .black,
                  font: .systemFont(ofSize: 20),
                  .left, text: nil)
    private let productDescriptionLabel
    = HeaderLabel(fontColor: .darkGray,
                  font: .systemFont(ofSize: 14),
                  .left, text: nil)
    private let productImageContainer
    = UIImageView()
    private let aboutTheProductBtn
    = MainButton(title: "More about",
                 color: #colorLiteral(red: 0.460616827,
                                      green: 0.7845389247,
                                      blue: 0.8016139865,
                                      alpha: 1) ,
                 highlightColor: .darkGray)
    

    private override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(product name: String, description: String) {
        self.init(frame: .zero)
        
        productNameLabel.text = name
        productDescriptionLabel.text = description
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupImgContainer()
        setupNameLabel()
        setupDescriptionLabel()
        setupAboutTheProductButton()
    }
    
    private func initializate() {
        addSubviews()
    }
    
    private func addSubviews() {
        [productImageContainer, productDescriptionLabel,
         productNameLabel, aboutTheProductBtn].forEach({
            self.addSubview($0)
        })
    }
    
    private func setupImgContainer() {
        let size = CGSize(width: bounds.height,
                          height: bounds.height)
        let origin = CGPoint(x: 0,
                             y: 0)
        setupFrameFor(subview: productImageContainer,
                      origin: origin, size: size)
    }
    
    private func setupNameLabel() {
        let size = CGSize(width: bounds.width / 2,
                          height: bounds.height / 2)
        let origin
        = CGPoint(x: productImageContainer.frame.maxX + 5,
                  y: bounds.minY + 5)
        setupFrameFor(subview: productNameLabel,
                      origin: origin, size: size)
    }
    
    private func setupDescriptionLabel() {
        let size = CGSize(width: bounds.width / 1.5,
                          height: bounds.height / 2)
        let origin
        = CGPoint(x: productImageContainer.frame.maxX + 5,
                  y: productNameLabel.frame.maxY + 5)
        setupFrameFor(subview: productDescriptionLabel,
                      origin: origin, size: size)
    }
    
    private func setupAboutTheProductButton() {
        let size = CGSize(width: bounds.height / 2,
                          height: bounds.height / 2)
        let origin
        = CGPoint(x: productDescriptionLabel.frame.maxX + 5,
                  y: bounds.minY + size.height / 2)
        setupFrameFor(subview: aboutTheProductBtn,
                      origin: origin, size: size)
    }
    
    private func setupFrameFor(subview: UIView,
                               origin: CGPoint,
                               size: CGSize) {
        let frame = CGRect(origin: origin, size: size)
        subview.frame = frame
    }
    
}
