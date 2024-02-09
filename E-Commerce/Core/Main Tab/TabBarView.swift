//
//  TabBarView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/7/23.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var cartManager : CartManager
    @State private var currentIndex = 0
    var body: some View {
        TabView {
            
            HomePageView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                } 
                Text("Favorite View")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorite")
                }
            CartView(product: productList[0])
                .tabItem {
                    Image(systemName: "bag")
                    Text("My Cart")
                }
              
            ProfileView(profile: .home)
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
    }
}



#Preview {
    TabBarView()
        .environmentObject(CartManager())
}


