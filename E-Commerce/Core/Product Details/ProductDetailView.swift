//
//  ProductDetailView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/9/23.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    @State private var increment = 1
    @State private var isFavorite = false

    var body: some View {
            ScrollView {
                // Product Details
                ZStack {
                    Color.white
                    
                    VStack(alignment: .leading) {
                        ZStack{
                            Image(product.ImageUrl)
                                .resizable()
                                .frame(height: 280)
                         
                                Button(action: {
                                  print("love")
                                    
                                }, label: {
                                    Image(systemName: "heart.fill")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .padding(.bottom , 195)
                                        .padding(.leading, 340)
                                        .foregroundColor(isFavorite ? .red : .black)
                            })
                      
                        }
                        .padding(.top,10)
                        
                        VStack(alignment: .leading) {
                            
                            
                            // title
                            Text(product.title)
                                .font(.title2)
                                .bold()
                            .foregroundColor(Color.kPrimary)

                            
                            
                            // Review
                            
                            HStack {
                               
                                ForEach(0..<5 , id: \.self){index in
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .font(.caption2)
                                }
                               
                                Text("|")
                                
                                Text("\(product.review) reviews")
                                    .font(.footnote)
                                    .bold()
                                                        
                            }
                            
                            // Decription
                            
                            Text(product.longDescription)
                                .font(.subheadline)
                                .padding(.vertical,10)
                            
                            // Price And Button
                            
                            HStack {
                                Text("$\(product.price * increment)")
                                    .font(.title2)
                                    .bold()
                                .foregroundColor(Color.kPrimary)
                                Spacer()
                                
                                HStack{
                                    Button(action: {
                                        if increment > 0 {
                                            increment -= 1
                                        }
                                    }, label: {
                                        Image(systemName: "minus.circle")
                                    })
                                    Text("\(increment)")
                                    
                                    Button(action: {
                                        increment += 1
                                       
                                    }, label: {
                                        Image(systemName: "plus.circle")
                                    })
                                    
                                    
                                }
                            }
                     
                            
                        }
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .offset(y: -20)
                    }
                                        
                }
                
            }


        }
    }

#Preview {
    ProductDetailView(product: productList[0])
        .environmentObject(CartManager())
}
