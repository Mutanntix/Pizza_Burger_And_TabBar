//
//  Product.swift
//  Lesson11
//
//  Created by Мурад Чеерчиев on 27.06.2022.
//

import Foundation

class Product {
    var name: String
    var description: String
    var price: Float? = nil
    
    init(name: String, description: String, price: Float? = nil) {
        self.name = name
        self.description = description
        self.price = price
    }
}
