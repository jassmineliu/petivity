//
//  ContentView.swift
//  petivity
//
//  Created by Scholar on 7/29/24.
//



import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var isActive = false
    @Environment(\.modelContext) var modelContext
    @Query var userRead: [userStuff]
    @State var userInfo: [userStuff] = []
    

    
  // @State private var placeholder = ""
  var body: some View {
    NavigationStack {
      ZStack {
        Color(red: 227/255, green: 244/255, blue: 244/255)
          .ignoresSafeArea()
        VStack {
          HStack {
            Spacer()
            NavigationLink(destination: info(userInfo: $userInfo).navigationBarBackButtonHidden(true))
            {Text ("?")
              .padding()}
                .fontWeight(.medium)
                .font(.custom("Times New Roman", size: 60))
                .foregroundColor(Color (red: 70/255, green: 134/255, blue: 133/255))
//                .padding(.trailing, 15.0)
//                .padding(.bottom,8.0)
//                .padding(.leading, 20.0)
          }
          .padding(.trailing, 20.0)
          Spacer()
          Text("Welcome to")
//            .font(.title)
            .font(.custom("Courier New", size: 30))
            .fontWeight(.semibold)
            .foregroundColor( Color (red: 70/255, green: 134/255, blue: 133/255))
            .padding(.bottom, 5.0)
          Text("PETIVITY")
            .fontWeight(.bold)
            .font(.custom("Times New Roman", size: 50))
            .foregroundColor(Color (red: 70/255, green: 134/255, blue: 133/255))
            .padding(.bottom, 5)
          Text("Ready to start?")
            .fontWeight(.semibold)
            .font(.custom("Courier New", size: 25))
            .foregroundColor(Color (red: 70/255, green: 134/255, blue: 133/255))
            .padding(.bottom, 20.0)
          // .font(.smallTitle)
          // link to navigation page
            NavigationLink(destination: home(userInfo: $userInfo).navigationBarBackButtonHidden(true), isActive: $isActive) {
            Text("START") }
              .font(.custom("Courier New", size: 25))
              .fontWeight(.bold)
              .foregroundColor(Color(red: 227/255, green: 244/255, blue: 244/255, opacity: 1.0))
              .padding()
            
              .onChange(of: isActive) {
                  
                 
                      addperson()
                  
                  
              }
          // background rectangle for start
          .background(Rectangle().frame(width: 175, height: 65).foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255)).cornerRadius(15))
          Spacer()
        }
      }
        
      .onAppear {
                      userInfo = userRead // Initialize userInfo after the view appears
                  }
        
    }
  } // body
    
    func addperson() {
        let toDo = userStuff(coins: 0, totalMinutes: 0, totalFish: 0, petName: "", petType: "")
        modelContext.insert(toDo)
    }
}
#Preview {
  ContentView()
}









