//
//  MenuButton.swift
//  AppleStoreSideNavbar
//
//  Created by Satya Prakash Sahu on 24/09/21.
//

import SwiftUI

struct MenuButton: View {
    
    var name : String
    var image : String
    @Binding var selectedMenu : String
    
    var animation : Namespace.ID
    
    var body: some View {
        Button(action: {
            
            withAnimation(.spring())    {
                selectedMenu = name
            }
            
            
        }, label: {
            
            HStack(spacing: 15.0){
                
                Image(systemName: image)
                    .foregroundColor(selectedMenu == name ? .black : .white)
                
                Text(name)
                    .foregroundColor(selectedMenu == name ? .black : .white)
                
            }
            .padding(.vertical, 12.0)
            .padding(.horizontal)
            .frame(width : 200,alignment: .leading)
            
            // Animation
            
            .background(
                
                ZStack{
                    
                    if selectedMenu == name {
                        Color.white
                            .cornerRadius(15)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                    else    {
                        Color.clear
                    }
                }
            
            
            )
            
            
          
            
            
        })
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
