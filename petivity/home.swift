//
//  home.swift
//  petivity
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI
import SwiftData



struct home: View {
    
    @Environment(\.modelContext) var modelContext

    var body: some View {
        NavigationStack {
                    
                    ZStack {
                        
                        // background color
                        Color(red: 227/255, green: 244/255, blue: 244/255)
                            .ignoresSafeArea()
                        
                        VStack {
                
                            // home text
                            Text("HOME")
                                .font(.custom("Times New Roman", size: 55))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255, opacity: 1.0))
                                .padding(.bottom, 65)
                                
                                
                            
                            // go to timer
                            NavigationLink(destination: timer()) {
                                Text("timer")
                                    .font(.custom("Courier New", size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 227/255, green: 244/255, blue: 244/255, opacity: 1.0))
                                    .padding(40)
                                    
                            }
                            // background rectangle for time
                            .background(Rectangle().frame(width: 175, height: 70.0).foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255)).cornerRadius(15))
                            
                            
                            
                            // go to shop
                            NavigationLink(destination: shop()) {
                                Text("shop")
                                    .font(.custom("Courier New", size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 227/255, green: 244/255, blue: 244/255, opacity: 1.0))
                                    .padding(40)
                                
                            }
                            // .frame(width: nil)
                            // ^^ (idk where this line of code came from , but nothing seems to change when its in a comment sooo)
                            // background rectangle for shop
                            .background(Rectangle().frame(width: 175, height: 70.0).foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255)).cornerRadius(15))
                            
                            // go to pet house
                            NavigationLink(destination: pethouse()) {
                                Text("pet house")
                                    .font(.custom("Courier New", size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 227/255, green: 244/255, blue: 244/255, opacity: 1.0))
                                    .padding(40)
                            }
                            // background rectangle for pet house
                            .background(Rectangle().frame(width: 175, height: 70.0).foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255)).cornerRadius(15))
                            
                            
                        }
                    }
                }
    } // end body
    
    
    
} // end struct

#Preview {
    home()
}