//
//  timer.swift
//  petivity
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI
import SwiftData

struct timer: View {
    @State private var timeRemaining: TimeInterval = 600
    @State private var timer: Timer?
    @State private var isRunning: Bool = false
    @State private var startStop: String = "start"
    
    @Query var user: [userStuff]
    @Environment(\.modelContext) var modelContext
        
    var body: some View {
        
//        let user1 = userStuff(coins: 0, totalMinutes: 0, totalFish: 0)
//        modelContext.insert(user1)
        

        NavigationStack {
            ZStack {
                
                Color(red: 227/255, green: 244/255, blue: 244/255)
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 30.0) {
                    
                    Text("Timer")
                        .font(.custom("Times New Roman", size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                    
                    ZStack {
                        Circle()
                            .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                        
                        
                        Text(formattedTime())
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 227/255, green: 244/255, blue: 244/255))
                        
                        
                    }// end ZStack for little timer circle part
                    .frame(maxWidth:500)
                    
                    HStack(spacing: 30.0) {
                        Button {
                            isRunning.toggle()
                            if isRunning {
                                startTimer()
                                startStop = "stop"
                            } else {
                                stopTimer()
                                startStop = "start"
                            }
                        } label: {
                            Image(systemName: isRunning ? "stop.fill" : "play.fill")
                                .foregroundStyle(.foreground)
                            Text(startStop)
                                .fontWeight(.bold)
                                .font(.custom("Courier New", size: 20))
                                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                            
                        } //button
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 70/255, green: 134/255, blue: 133/255))
                        
                        
                        
                        Button {
                            user[0].coins += (Int)(timeRemaining / 300)
                            timeRemaining = 0
                            
                        } label: {
                            
                            Text("convert")
                                .fontWeight(.bold)
                                .font(.custom("Courier New", size: 20))
                                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                            
                        } //button
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 70/255, green: 134/255, blue: 133/255))
                        
                    } //end HStack that makes buttons
                    
                    Text("coins earned: \(user[0].coins)")
                        .font(.custom("Courier New", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                    
                    Text("total minutes studied: \(user[0].coins)")
                        .font(.custom("Courier New", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 70/255, green: 134/255, blue: 133/255))
                    
                } //end VStack
                .padding(.horizontal, 30)
                
                
            } //end ZStack
        } //end navigation stack
    } // end body
    
        private func formattedTime() -> String {
            let minutes = Int(timeRemaining) / 60
            let second = Int(timeRemaining) % 60
            return String(format: "%02d:%02d", minutes, second)
        } // shows the time formatted
        
        private func startTimer() {
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                timeRemaining += 1
            }
        }
        
        private func stopTimer() {
            isRunning = false
            timer?.invalidate()

        } // stops timer
}

//#Preview {
//    timer()
//}

