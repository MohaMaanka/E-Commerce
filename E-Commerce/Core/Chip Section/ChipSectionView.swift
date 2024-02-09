//
//  ChipSectionView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/9/23.
//

import SwiftUI

struct ChipSectionView: View {
    var name: String
    var body: some View {
        HStack{
            
            Button(action: {
                print("Search ")
            }, label: {
                ZStack{
                    HStack {
                        Text(name)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.horizontal)

                    }
                    .foregroundColor(.black)
                    .frame(width: .infinity, height: 30)
                    .background(Color.kLightBackground)
                    .cornerRadius(10)
                }
            })
            
        }
    }
}

#Preview {
    ChipSectionView(name: "All")
}
