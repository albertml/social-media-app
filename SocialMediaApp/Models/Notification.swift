//
//  Notification.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/26/21.
//

import Foundation

struct Notification: Identifiable {
    var id: Int
    let type: NotificationTye
    let isToday: Bool
    let name: String
    let topic: String
    let updated: String
    
    enum NotificationTye {
        case comment, like, followed
    }
}
