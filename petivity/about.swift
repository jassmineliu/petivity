//
//  about.swift
//  petivity
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct about: View {
    var body: some View {
        ZStack{
              Color(red: 227/255, green: 244/255, blue: 244/255).ignoresSafeArea()
            VStack(spacing: 20.0) {
                Spacer()
                Text("Meet the team")
                  .font(.custom("Times New Roman", size: 55)) .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                
                Image("group")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                  .padding()
                Text("Emma, Lundyn, Jasmine, Shayla")
                  .font(.custom("Courier New", size: 29))
                  .fontWeight(.bold)
                  .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                Text("This is the team that made petivity! We are students participating in Kode with Klossy, a coding summer camp. We decided to make this app for students that need to or like to study. We hope you enjoy petivity.")
                  .font(Font.custom("Courier New", size: 16))
                  .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                  .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
              }
              .padding()
            }
          
    }
}

#Preview {
    about()
}
