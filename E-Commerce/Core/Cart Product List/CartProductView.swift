//
//  CartProductView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/9/23.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    @State private var increment = 1
    
    
    
    var body: some View {
        
        ScrollView {
            // Cart
            HStack (alignment: .top){
                HStack {
                    Image(product.ImageUrl)
                        .resizable()
                        .frame(width: 90, height: 85)
                    .cornerRadius(8)
                    
                    VStack (alignment: .leading){
                        
                        HStack{
                            
                            VStack (alignment: .leading){
                            Text(product.title)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text(product.shortDescription)
                                .font(.caption)
                                .foregroundColor(Color.gray)
                                .fontWeight(.medium)

                        }
                            Spacer()
                        
                            Button(action: {
                                cartManager.removeCard(product: product)
                            }, label: {
                                
                                Image(systemName: "trash")
                                    .padding(.horizontal)
                                    .foregroundColor(.red)
                                    .bold()
                                    .padding(.top,20)
                            })
                        
                        }
                        
                        HStack {
                            Text("$\(product.price)")
                                .font(.subheadline)
                                .bold()

                        }
                    }
                }
                Spacer()

                
            }
            .frame(height: 120)
            .background(Color.kLightBackground)
            .cornerRadius(15)
            .padding(.horizontal)
        }
        .padding(.top)


    }
}

#Preview {
    CartProductView(product: productList[2])
        .environmentObject(CartManager())
}
