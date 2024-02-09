//
//  AdsBannerSectionView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/9/23.
//

import SwiftUI

struct AdsBannerSectionView: View {
    var body: some View {
        ZStack {
            Color.kPrimary
            
            HStack {
                
                VStack(alignment: .leading) {
                    Text("Apple Store")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Text("Find the Apple product accessories you looking for")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .padding(.vertical,1)

                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Shop New Year")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(Color.kThird)
                    })
                    .padding(.vertical,2)
                    
                }
                
                Image("landing")
                    .resizable()
                    .scaledToFit()
            }
            
        }
        .frame(width: .infinity , height: 200)
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

#Preview {
    AdsBannerSectionView()
}
