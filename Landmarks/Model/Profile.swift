//
//  Profile.swift
//  Landmarks
//
//  Created by Naïka Jean-Baptiste on 2024-05-07.
//

import Foundation

struct Profile{
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "n_jb")
    
    enum Season: String, CaseIterable, Identifiable{
        case winter = "☃️"
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        
        var id: String {rawValue}
    }

    
}
