//
//  Home.swift
//  AppleStoreSideNavbar
//
//  Created by Satya Prakash Sahu on 24/09/21.
//

import SwiftUI


struct Home: View {
    
    init()  {
        UITabBar.appearance().isHidden = true
    }
    
    @StateObject var menuData = MenuViewModel()
    @Namespace var animation
    
    
    
    var body: some View {
        
        // Hiding Tab bar..
       
        
        
        
        HStack(spacing: 0.0) {
            
            // Drawer and the main view.
            
            // Drawer
            Drawer( animation: animation)
            
            //Main View
            TabView(selection : $menuData.selectedMenu) {
                
                Catalogue()
                    .tag("Catalogue")
                
                Orders()
                    .tag("Your Orders")
                
                Cart()
                    .tag("Your Cart")
                
                Favourites()
                    .tag("Favourites")
                
                
                
            }
            .frame(width: UIScreen.main.bounds.width)
            
            
        }
        // Max Frame
        .frame(width: UIScreen.main.bounds.width)
        
        // Moving View
        // 250/2 = 125..
        .offset(x : menuData.showDrawer ?  125 : -125)
        .overlay(
            ZStack {
                
                if !menuData.showDrawer {
                    DrawerCloseButton(animation: animation)
                        .padding()
                }
            
            },alignment: .topLeading
        )
        
        // Setting as a environment object.
//        for re declaration
        
        .environmentObject(menuData)
        
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
