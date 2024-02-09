//
//  ProductCardView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/8/23.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    @State private var isAddedToCart = false
    
    var body: some View {
        ZStack {
            
            
            ZStack (alignment: .bottomTrailing){
                
                VStack (alignment: .leading){
                    Image(product.ImageUrl)
                        .resizable()
                    .frame(width: 175, height: 170)
                    
                    Text(product.title)
                        .font(.subheadline)
                        .bold()
                    
                    Text(product.shortDescription)
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                        .fontWeight(.regular)
                    
                    Text("$\(product.price)")
                        .bold()
                        .padding(.vertical , 3)

                }
                

                Button(action: {
                    if isAddedToCart {
                        cartManager.removeCard(product: product)
                    } else {
                        cartManager.addCard(product: product)
                    }
                    isAddedToCart.toggle()
                    
                }, label: {
                    Image(systemName: isAddedToCart ? "checkmark.circle.fill" : "plus.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.kSecondary)
                        .padding(.trailing)

                    
                })
                .padding(.vertical, -1)
            }

        }
        .frame(width: 185, height: 260)
        .cornerRadius(5)
        .shadow(radius: 1)
        .background(Color.kLightBackground)
    }
}

#Preview {
    ProductCardView(product: productList[0])
        .environmentObject(CartManager())
}
