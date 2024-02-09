//
//  ProfileView.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/18/23.
//

import SwiftUI

struct ProfileView: View {
    let profile : ProfileManager
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading ){
                    
                    VStack(alignment: .leading){
                        HStack(alignment: .top) {
                         
                            
                            VStack(alignment: .leading, spacing: 5){
                                Image("Good")
                                    .resizable()
                                    .frame(width: 62, height: 62)
                                .clipShape(.capsule)
                                .offset(x: 120, y: -60)
                                
                                
                                VStack {
                                    Text("Mohamed Abdinor")
                                        .font(.title2)
                                    .fontWeight(.semibold)
                                    
                                    HStack {
                                        Text("Profile")
                                        
                                        +
                                        Text(" 10% ")
                                        +
                                        Text("Complete")
                                        
                                        Text("Edit")
                                            .underline()
                                            .bold()
                                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                                .offset(x: 65, y: -50)

                                
                            }
                            
                            Spacer()

                        }
                        .padding(.leading)
                    }
                    .padding(.top,35)
                    .background(
                        Color.gray.opacity(0.3)
                            .cornerRadius(15)
                            .frame(height: 150)
                    
                    )
                    .padding()
                    .padding(.top, 40)
                    
                    .navigationTitle("Profile")
                    .navigationBarTitleDisplayMode(.inline)
                    
                    
                    ForEach(ProfileManager.allCases , id: \.rawValue) { option in
                        HStack(spacing: 20){
                            Image(systemName: option.imageName)
                                .font(.title3)
                            Text(option.title)
                        }
                        
                    }
                    .padding()
                    
                }
            }
        }
    }
}

#Preview {
    ProfileView(profile: .home)
}
