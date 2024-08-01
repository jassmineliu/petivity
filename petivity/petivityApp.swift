//
//  petivityApp.swift
//  petivity
//
//  Created by Scholar on 7/29/24.
//

//environments, query, model context.inser??

import SwiftUI
import SwiftData

@main
struct petivityApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: userStuff.self)
        }
    }
}
