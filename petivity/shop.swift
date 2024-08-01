//
//  shopView.swift
//  shop screen
//
//  Created by Emma Monzon on 7/30/24.
//
import SwiftUI
struct shop: View {
    @State private var totalCoins = 10
    @State private var totalFish = 2
    @State private var message = ""
    
    @Environment(\.modelContext) var modelContext
    @Binding var userInfo: [userStuff]
    
    var body: some View {
        ZStack {
            //background color
            Color(red: 227/255, green: 244/255, blue: 244/255)
                .ignoresSafeArea()
 
            VStack {
                // adds title
                Text("Shop")
                    .font(.custom("Times New Roman", size: 55))
                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                
                // adds total coins
                Text("total coins: \(userInfo[0].coins)")
                    .font(.custom("Courier New", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                
                // adds total fish
                Text("total fish: \(userInfo[0].totalFish)")
                    .font(.custom("Courier New", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                
                // add fish image
                Image("fish")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    .cornerRadius(15)
                
                // add fish background sqaure
                
                // add fish price
                Text("1 fish = 3 coins")
                    .font(.custom("Courier New", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                
                // buy fish button
                Button("Buy Fish") {
                    if userInfo[0].coins >= 3 {
                        userInfo[0].coins = userInfo[0].coins - 3
                        userInfo[0].totalFish = userInfo[0].totalFish + 1
                    } else {
                        message = "You don't have enough coins :(, time to do some studying!"
                        
                    }
                }
                
                // buy button text color
                .foregroundColor(Color(red: 227/255, green: 244/255, blue: 244/255))
                // buy button background/custimization
                .font(.custom("Courier New", size: 25))
                .fontWeight(.bold)
                .frame(width: 200.0, height: 50.0)
                .background(Rectangle().foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255)).cornerRadius(15))
                
                Text(message)
                    .font(.custom("Courier New", size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                    .padding()
                
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
                .transition(.opacity)
              
            }
        } //end toolbar
    } // body
}
//#Preview {
//    shop()
//}
