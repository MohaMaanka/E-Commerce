//
//  SideBarView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/18/23.
//

import SwiftUI

struct SideBarView: View {
    let email = "Maanka@gmail.com"
    var body: some View {
        // main Container
        VStack(alignment: .leading) {
            
            
            // Header
            
            ZStack(alignment: .leading) {
                Color(Color.kPrimary)
                    .frame(height: 270)
                    .ignoresSafeArea()
                
            VStack (alignment: .leading){
                    Image("Good")
                        .resizable()
                        .frame(width: 92, height: 92)
                        .clipShape(.capsule)
                        .padding(.vertical,1)
                        .padding(.leading)
                        
                VStack(alignment: .leading) {
                    Text("Welcome to store")
                            .font(.footnote)
                        .foregroundColor(.white)
                    
                    Text("Welcome to store")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("\(email)")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                    
                 
                }
            .padding(.leading, 40)
            }
        
            
            // body
            
            //  Section Two
            
            VStack(alignment: .leading){
                
                // Item One
                VStack(alignment: .leading){
                    Text("Trading")
                        .font(.subheadline)
                        .fontWeight(.heavy)
                    
                    Text("Best Seller")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("New Releases")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("Movers & Shakers")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Divider()
                    .frame(width: 120)
                    .padding(.vertical,1)
                
                    .padding()
                
                // Item Two
                VStack(alignment: .leading){
                    Text("Top Category")
                        .font(.footnote)
                        .fontWeight(.heavy)
                    
                    Text("Electronics")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("Fashion")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("Computer")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("Mobile & Phones")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("See all Category")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Divider()
                    .frame(width: 120)
                    .padding(.vertical,1)
                
                    .padding(.vertical, 5)
                
                // Item Three
                VStack(alignment: .leading){
                    Text("Programs & Features")
                        .font(.footnote)
                        .fontWeight(.heavy)
                    
                    Text("Today's Deals")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("Try Prime")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("Global Store")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("Gift Cards")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("Sell on Store")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("Subscribe & Save")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
            }
            .padding(.top)
            .padding(.leading,50)
            // Logo
             
            VStack {
                Image("vert_logo")
                     .resizable()
                     .frame(width: 90, height: 90)
                 .padding(.top)
            }
            .padding(.leading, 40)

                 
            
        Spacer()
            
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    SideBarView()
}
