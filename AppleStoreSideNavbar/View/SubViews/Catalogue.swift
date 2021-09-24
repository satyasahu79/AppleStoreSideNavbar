//
//  Catalogue.swift
//  AppleStoreSideNavbar
//
//  Created by Satya Prakash Sahu on 24/09/21.
//

import SwiftUI

struct Catalogue: View {
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack {
                    
                    // Featured item 1
                    VStack(alignment: .leading, spacing: 10.0) {
                        
                        Image("apple watch combo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 230, height: 230)
                            .offset(x: -20, y: -10)
                        
                        Text("Apple Watch Series 7")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.primary)
                        
                        VStack(alignment: .leading, spacing: 5.0) {
                            Text("Full Screen Ahead")
//                            Text("An inteligent AI assistant")
//                            Text("Private and Secure")
                        }
                        
                      
                    }
                    .padding(.bottom,45)
                    .padding(.leading,16)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(
                        
                        Color.primary.opacity(0.06)
                            .cornerRadius(20)
                            .padding(.top,55)
                    )
                    .offset(x: 70, y: 0)
                    .overlay(Button(action: {}, label: {
                      
                        Image(systemName: "bag.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(15)
                    })
                    .offset(x: -30, y: 30)
                    ,alignment: .bottomTrailing
                    
                    )
                    .padding(.vertical,35)
                    
                    
                    // Featured Item 2
                    
                    VStack(alignment: .trailing, spacing: 15.0) {
                        
                        Image("airpods max")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 250)
                            .offset(x: 30, y: -30)
                        
                        
                        HStack {
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("AirPods Max")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.primary)
                                    .padding(.bottom,7)
                                
                                
                                VStack(alignment: .trailing, spacing: 5.0) {
                                    Text("High-fidelity audio")
//                                    Text("An inteligent AI assistant")
//                                    Text("Private and Secure")
                                
                                }
                            
                            }
                        }
                        .padding()
                   
                    }
                    .padding(.bottom,45)
                    .padding(.leading,7)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(
                        
                        Color.primary.opacity(0.06)
                            .cornerRadius(20)
                            .padding(.top,55)
                    )
                    .offset(x: -70, y: 0)
                    .overlay(Button(action: {}, label: {
                        Image(systemName: "bag.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(15)
                    })
                    .offset(x: 30, y: 30)
                    ,alignment: .bottomLeading
                    
                    )
                    .padding(.vertical,35)
                    .padding(.bottom,30)
                    
                    
                    CardView(image: "homepod mini", title: "HomePod Mini", tagLine: "Room-filling sound.")
                    
                    CardView(image: "mac mini", title: "Mac Mini", tagLine: "New guts. More glory.")
                    
                    CardView(image: "apple watch nike", title: "Watch 6", tagLine: "Wear something new.")
                    
              
                }
            }
            .navigationTitle("Catalogue")
            
            
        }
        
        
        
        
    }
}

struct Catalogue_Previews: PreviewProvider {
    static var previews: some View {
        Catalogue()
    }
}

struct CardView: View {
    
    var image : String
    var title : String
    var tagLine : String
    
    var body: some View {
        HStack(spacing: 25.0)   {
            
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
            
            VStack(alignment: .leading, spacing: 10.0){
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(tagLine)
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            
            
        }
        .padding(.horizontal, 20.0)
        .frame(maxWidth : .infinity, alignment: .leading)
    }
}
