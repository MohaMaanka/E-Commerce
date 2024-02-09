//
//  ProductAllCardView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/9/23.
//

import SwiftUI

struct ProductAllCardView: View {
    @EnvironmentObject var cartManager: CartManager
    var column = [GridItem(.adaptive(minimum: 160), spacing: 30)]
    var body: some View {
        NavigationStack {

            ScrollView(.vertical, showsIndicators: false){
                LazyVGrid(columns: column,spacing: 15) {
                    ForEach(productList, id: \.id){product in
                        ProductCardView(product: product)
                    }
                }
                .padding()
            }
            .navigationTitle("Feature Product")
        }
    }
}

#Preview {
    ProductAllCardView()
        .environmentObject(CartManager())
}
