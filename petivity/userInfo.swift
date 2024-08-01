//
//  userInfo.swift
//  petivity
//
//  Created by Scholar on 7/31/24.
//

import Foundation
import SwiftData

@Model
class userStuff {
     var coins: Int
     var totalMinutes: Int
     var totalFish: Int
     var petName: String = ""
     var petType: String = ""
    
    init(coins: Int, totalMinutes: Int, totalFish: Int, petName: String, petType: String) {
        self.coins = coins
        self.totalMinutes = totalMinutes
        self.totalFish = totalFish
        self.petName = petName
        self.petType = petType
    }
    
    
}
