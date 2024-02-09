// ContentView.swift

import SwiftUI


struct ContentView: View {
    @State private var showMenu = false
    @EnvironmentObject private var cartManager : CartManager
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading){
                TabBarView()
                    .navigationBarHidden(showMenu)
                
                if showMenu {
                    ZStack {
                        Color(.black)
                            .opacity(0.25)
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            showMenu = false
                        }
                    }
                    .ignoresSafeArea()
                }
                
                SideBarView()
                    .frame(width: 300)
                    .offset(x: showMenu ? 0: -300)
                    .background(showMenu ? Color.white: Color.clear)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.primary) // Change to primary color
                    })
                }
                
                ToolbarItem {
                    Image("store_brand")
                        .resizable()
                        .frame(width: 165, height: 40)
                        .padding(.trailing, 51)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(
                        destination: CartView(product: productList[0]),
                        label: {
                            CartButton(numberOfProduct: cartManager.products.count)
                        }
                    )
                    .environmentObject(cartManager)
                }
            }
            
           
        }
    }
}


#Preview{
    ContentView()
        .environmentObject(CartManager())
}
