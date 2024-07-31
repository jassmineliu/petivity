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
    
    init(coins: Int, totalMinutes: Int, totalFish: Int) {
        self.coins = coins
        self.totalMinutes = totalMinutes
        self.totalFish = totalFish
    }
    
    
}
