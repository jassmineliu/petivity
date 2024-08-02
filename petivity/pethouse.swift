//
//  shopView.swift
//  shop screen
//
//  Created by Emma Monzon on 7/30/24.
//
import SwiftUI
import SwiftData

struct pethouse: View {
    
    @State private var messageHouse = ""
    @State private var messageFood = ""
    @State private var happiness = 5
    @Environment(\.modelContext) var modelContext
    @Binding var userInfo: [userStuff]
    
    var body: some View {
        NavigationStack {
                    ZStack {
                        //background color
                        Color(red: 227/255, green: 244/255, blue: 244/255)
                            .ignoresSafeArea()
                        
                        VStack {
                            
       
                                
                                // adds title
                                Text("Pet House")
                                    .font(.custom("Times New Roman", size: 55))
                                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                                    .padding(30.0)
                                
                                ZStack {
                                    // add background image
                                    Image("house2")
                                        .resizable()
                                        .frame(width: 350, height: 350)
                                        .cornerRadius(15)
                                    
                                    // add cat image
                                    Image(userInfo[0].petType)
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .cornerRadius(15)
                                        .padding(.trailing, 90)
                                        .padding(.top, 60)
                                }
                                
                                // name
                            Text("name: \(userInfo[0].petName)")
                                    .font(.custom("Courier New", size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                                
                                // happiness level
                                Text("happiness: \(happiness)/10")
                                    .font(.custom("Courier New", size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                                
                                // available fish
                            Text("available fish: \(userInfo[0].totalFish)")
                                    .font(.custom("Courier New", size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                                
                                // feed fish button
                                Button("FEED") {
                                    if happiness >= 8 {
                                        happiness = 10
                                        messageHouse = "Your cat is fully happy :)"
                                    } else if userInfo[0].totalFish >= 1 {
                                        userInfo[0].totalFish = userInfo[0].totalFish - 1
                                        happiness = happiness + 2
                                    } else {
                                        messageHouse = "No fish left :(, go study to buy more!"
                                    }
                                }
                                // feed button text color
                                .foregroundColor(Color(red: 227/255, green: 244/255, blue: 244/255))
                                // buy button background/custimization
                                .font(.custom("Courier New", size: 25))
                                .padding()
                                .fontWeight(.bold)
                                .frame(width: 200.0, height: 50.0)
                                .background(Rectangle().foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255)).cornerRadius(15))
                                
                                Text(messageHouse)
                                    .font(.custom("Courier New", size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 50.0)
                                
                                
                                Text(messageFood)
                                    .font(.custom("Courier New", size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 50.0)
                        }
                    }
                    
                    .toolbar {
                          ToolbarItemGroup(placement: .navigationBarLeading) {
                            NavigationLink(destination: home(userInfo: $userInfo).navigationBarBackButtonHidden(true)) {
                              Image("home")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(height:50)
                            }
                              NavigationLink(destination: petFeatures(userInfo: $userInfo).navigationBarBackButtonHidden(true)) {
                                Text("edit")
                                      .font(.custom("Courier New", size: 20))
                                      .fontWeight(.bold)
                                      .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                                      .padding(.leading, 250.0)
                              }

                        }
                    } //end toolbar
                }
            }
        }
                                             
//        #Preview {
//            pethouse()
//        }
