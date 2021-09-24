//
//  MenuModel.swift
//  AppleStoreSideNavbar
//
//  Created by Satya Prakash Sahu on 24/09/21.
//

import SwiftUI

// Menu Data

class MenuViewModel : ObservableObject  {
    
    // Default selected menu
    @Published var selectedMenu = "Catalogue"
    
    // Show side bar
    
    @Published var showDrawer = false
    
    
}
