//
//  HomePageView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/8/23.
//

import SwiftUI

struct HomePageView: View {
    
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        NavigationStack {
            ScrollView{
                AdsBannerSectionView()
                    .padding(.top,30)
                chipSection
                    .padding(.top, 15)
                hotSalesSection
                    .padding(.top,10)
                
                
                
            
            }
            .scrollDisabled(true)

        }
    }
}



#Preview {
    HomePageView()
        .environmentObject(CartManager())
}



extension HomePageView {
    
    // Section Chip
    
    var chipSection: some View {
        
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ChipSectionView(name: "All")
                ChipSectionView(name: "Computer")
                ChipSectionView(name: "Headsets")
                ChipSectionView(name: "Speakers")
                ChipSectionView(name: "Accessories")
                ChipSectionView(name: "Printing")
                ChipSectionView(name: "Cameras")
        
            }
        }
        .padding(.leading)
    }
    
    
    
    // Section hot sales
  
    
    var hotSalesSection: some View {
        VStack {
        
            // Section Hot Sales
            HStack {
                
                HStack {
                    Text("Hot Sales")
                        .font(.subheadline)
                    .fontWeight(.heavy)
                }
                
                Spacer()
              
                NavigationLink {
                    ProductAllCardView()
                } label: {
                    Text("See all")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.blue)
                }

              
            }
            .padding(.vertical,5)          
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(productList, id: \.id){product in
                        NavigationLink {
                            ProductDetailView(product: product)
                        } label: {
                            ProductCardView(product: product)
                              
                        }

                    }
                }
                .padding(.top, 10)
            }
        }
        .padding()
    }
}


