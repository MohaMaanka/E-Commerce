//
//  CartView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/9/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products , id: \.id){product in
                    CartProductView(product: product)
                    
                }

                
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("Have a coupon? enter here")
                            .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.vertical, 10)
                        
                        
                        HStack {
                            Text("FMS2023")
                                .font(.footnote)
                            .bold()
                            
                            Spacer()
                            
                           Text("Available")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(.green)
                            
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.green)
                            
                            
                        }
                        .padding(.horizontal)
                    
                        .overlay(
                            Rectangle().stroke()
                                .frame(width: .infinity, height: 30)
                                .foregroundColor(.gray)
                               
                        )
                    }
                    
                    
                    VStack(alignment: .leading) {
         
                        // Delivery
                        HStack {
                            Text("Delivery Free:")
                                .font(.footnote)
                                .fontWeight(.bold)
                            
                            Spacer()
                        
                            Text("Free")
                                .font(.footnote)
                                .fontWeight(.bold)
                        }
                        .padding(.vertical, 3)

                        
                        // Discount
                        
                        HStack {
                            Text("Discount:")
                                .font(.footnote)
                                .fontWeight(.bold)
                            
                            Spacer()
                        
                            Text("No Discount")
                                .font(.footnote)
                                .fontWeight(.bold)
                        }
                        .padding(.vertical, 3)

                        Divider()
                        
                        // Total
                        HStack {
                            Text("Total:")
                                .font(.title2)
                                .bold()
                            .foregroundColor(Color.kPrimary)
                            
                            Spacer()
                            
                            Text("$\(cartManager.total)")
                                .font(.footnote)
                                .fontWeight(.bold)
                            
                        }

                        
                        // button Add

                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Continue to Checkout ")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .foregroundColor(.white)
                            
                        })
                        .background(Color.kPrimary)
                        .cornerRadius(8)
                        .padding(.top)
                        

                        
                    }
                    .padding(.top)
                    
                    
                    

                   
                }
                .background(Color.white)
                .cornerRadius(12)
                .offset(x:0 , y: -20)
                .padding()

                
            }else {
                Image("Cart Image")
                    .resizable()
                    .frame(width: .infinity, height: 300)
                    .cornerRadius(20)
                    .padding()
                    .padding(.top, 20)
                
                Text("You Cart Is Empty.")
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
            }
        }
        .padding(.top)

    }
}

#Preview {
    CartView(product: productList[0])
        .environmentObject(CartManager())
}


