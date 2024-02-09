//
//  E_CommerceApp.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/7/23.
//

import SwiftUI

@main
struct E_CommerceApp: App {
    
    @StateObject var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CartManager())
        }
    }
}

