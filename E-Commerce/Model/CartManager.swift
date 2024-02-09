//
//  CartManager.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/8/23.
//

import Foundation


class CartManager: ObservableObject {
    
    @Published private(set) var products: [Product] = []
    @Published private(set) var total = 0



 
    func addCard(product: Product){
        products.append(product)
        total += product.price
    }
    
    
    
    func removeCard(product: Product){
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
    
    
    
}

