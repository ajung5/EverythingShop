//
//  CartManager.swift
//  EverythingShop
//
//  Created by Agung Nawawi on 03/11/23.
//

import Foundation


class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []

    func addProduct(_ product: Product) {
        products.append(product)
    }

    func removeProduct(at index: Int) {
        products.remove(at: index)
    }

    func getTotalPrice() -> Double {
        var totalPrice: Double = 0.0
        for product in products {
            totalPrice += product.totalPrice
        }
        return totalPrice
    }
}
