//
//  Product.swift
//  EverythingShop
//
//  Created by Agung Nawawi on 03/11/23.
//

import Foundation

struct Product {
    let id: UUID = .init()
    let name: String
    let price: Double
    let quantity: Int
    
    var totalPrice: Double {
        return price * Double(quantity)
    }
}

var productArray: [Product] = [
    Product(name: "Apple", price: 1.99, quantity: 0),
    Product(name: "Banana", price: 0.99, quantity: 0),
    Product(name: "Orange", price: 0.79, quantity: 0),
    Product(name: "Milk", price: 2.99, quantity: 0),
    Product(name: "Eggs", price: 1.99, quantity: 0),
    Product(name: "Bread", price: 1.29, quantity: 0),
    Product(name: "Chicken", price: 4.99, quantity: 0),
    Product(name: "Beef", price: 5.99, quantity: 0),
    Product(name: "Salmon", price: 8.99, quantity: 0),
    Product(name: "Pasta", price: 1.49, quantity: 0),
    Product(name: "Rice", price: 0.99, quantity: 0)
]

