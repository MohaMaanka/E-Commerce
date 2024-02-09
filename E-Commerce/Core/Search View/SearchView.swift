//
//  SearchView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/18/23.
//

import SwiftUI

struct SearchView: View {
    @State private var search = ""
    var body: some View {
        VStack{
              
                HStack{
                    
                    HStack {
                        TextField("Search for anything", text: $search)
                        
                        HStack(spacing: 10) {
                            Image(systemName: "camera")
                                .fontWeight(.medium)
                            
                            Image(systemName: "magnifyingglass")
                                .fontWeight(.medium)
                        }

                    }
                }
                .padding()
                .background(Color(.systemGray).opacity(0.2))
                .cornerRadius(15)
                .padding(.horizontal)
            

        }
    }
}

#Preview {
    SearchView()
}
