//
//  Drawer.swift
//  AppleStoreSideNavbar
//
//  Created by Satya Prakash Sahu on 24/09/21.
//

import SwiftUI

struct Drawer: View {
    
    @EnvironmentObject var menuData : MenuViewModel
    var animation : Namespace.ID
    
    var body: some View {
        
        
        
        VStack {
            HStack{
                Image("Avatar")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                Spacer()
                
                // Close Button..
               
                if menuData.showDrawer {
                    DrawerCloseButton( animation: animation)
                }
                
                
                
                
                
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 10.0){
                Text("Hello")
                    .font(.title2)
                
                Text("Robert Fox")
                    .font(.title)
                    .fontWeight(.heavy)
            }
            .foregroundColor(.white)
            .frame(maxWidth : .infinity,alignment: .leading)
            .padding(.horizontal)
            .padding(.top, 5.0)
            
        // Menu Button
          
            VStack(alignment: .leading, spacing: 30.0){
                MenuButton(name: "Catalogue", image: "envelope.fill", selectedMenu: $menuData.self.selectedMenu, animation: animation)
                
                MenuButton(name: "Your Cart", image: "bag.fill", selectedMenu: $menuData.self.selectedMenu, animation: animation)
                
                MenuButton(name: "Favourites", image: "heart.fill", selectedMenu: $menuData.self.selectedMenu, animation: animation)
                
                MenuButton(name: "Your Orders", image: "list.triangle", selectedMenu: $menuData.self.selectedMenu, animation: animation)
                    
            }
            .padding(.leading)
            .frame(width : 250,alignment: .leading)
            .padding(.top, 30.0)
            
            Divider()
                .background(Color.white)
                .padding(.horizontal, 25.0)
                .padding(.top, 30.0)
            
            
            Spacer()
            
            MenuButton(name: "Sign Out", image: "person.circle.fill", selectedMenu: .constant(""), animation: animation)
                .padding(.bottom)
            
           
        }
    
        // Default size..
        .frame(width: 250)
        .background(
            Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))
                .ignoresSafeArea(.all,edges: .vertical)
        )
        
    
    
    }
}

struct Drawer_Previews: PreviewProvider {
    static var previews: some View {
        Home()
//            .environmentObject(MenuViewModel())
    }
}


struct DrawerCloseButton : View {
    @EnvironmentObject var menuData : MenuViewModel
    var animation : Namespace.ID
    var body: some View   {
        Button(action: {
            
            withAnimation(.easeInOut)   {
                menuData.showDrawer.toggle()
            }
            
            
        }, label: {
            
            
            
            VStack(spacing: 5.0) {
                
                
                Capsule()
                    .fill(menuData.showDrawer ? Color.white : Color.black)
                    .frame(width: 35, height: 3)
                    .rotationEffect(.init(degrees: menuData.showDrawer ? -50 : 0))
                
                // Adjusting like the xmark
                
                    .offset(x: menuData.showDrawer ? 2.0 : 0, y: menuData.showDrawer ? 9.0 : 0)
                
            
                VStack(spacing: 5.0){
                    Capsule()
                        .fill(menuData.showDrawer ? Color.white : Color.black)
                        .frame(width: 35, height: 3)
                    
                    
                    Capsule()
                        .fill(menuData.showDrawer ? Color.white : Color.black)
                        .frame(width: 35, height: 3)
                    
                    // Moving this to hide
                    
                        .offset(y : menuData.showDrawer ? -8 : 0)
                    
                }
                
                // Rotating like xmark
                
                .rotationEffect(.init(degrees: menuData.showDrawer ? 50 : 0))
                
                
            
            }
        
        
        
        })
        .scaleEffect(0.8)
        
        .matchedGeometryEffect(id: "MENU_BUTTON", in: animation)
        
        
        
        
    }
    
    
}
