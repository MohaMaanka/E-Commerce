//
//  CartButton.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/9/23.
//

import SwiftUI

struct CartButton: View {
    @EnvironmentObject var cartManager: CartManager
    var numberOfProduct: Int
    var body: some View {
        VStack {
            
            ZStack (alignment: .topTrailing){
                Image(systemName: "bag")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.kPrimary)
                if numberOfProduct > 0 {
                    Text("\(numberOfProduct)")
                        .font(.caption2)
                        .frame(width: 15, height: 15)
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        
                    
                }
            }
        }
    }
}

#Preview {
    CartButton(numberOfProduct: 1)
        .environmentObject(CartManager())
}
