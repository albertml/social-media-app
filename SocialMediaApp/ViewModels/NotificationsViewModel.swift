//
//  NotificationsViewModel.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/26/21.
//

import Combine

final class NotificationsViewModel: ObservableObject {
    private var notificationsViewModel: [NotificationViewModel] = []
    @Published var todayNotifications: [NotificationViewModel] = []
    @Published var previousNotifications: [NotificationViewModel]
    
    init() {
        notificationsViewModel = [
            NotificationViewModel(
                id: 0,
                notification: Notification(
                    id: 0,
                    type: .comment,
                    isToday: true,
                    name: "Guerrero Woodard",
                    topic: "The Chronicles",
                    updated: "4"
                )
            ),
            NotificationViewModel(
                id: 1,
                notification: Notification(
                    id: 0,
                    type: .comment,
                    isToday: true,
                    name: "Fitgerald Stanton",
                    topic: "The Chronicles",
                    updated: "4"
                )
            ),
            NotificationViewModel(
                id: 2,
                notification: Notification(
                    id: 0,
                    type: .like,
                    isToday: false,
                    name: "Meredith Hendricks",
                    topic: "The Chronicles",
                    updated: "21"
                )
            ),
            NotificationViewModel(
                id: 3,
                notification: Notification(
                    id: 0,
                    type: .followed,
                    isToday: false,
                    name: "Guerrero Woodard",
                    topic: "The Chronicles",
                    updated: "24"
                )
            ),
            NotificationViewModel(
                id: 4,
                notification: Notification(
                    id: 0,
                    type: .comment,
                    isToday: false,
                    name: "Guerrero Woodard",
                    topic: "The Chronicles",
                    updated: "24"
                )
            )
        ]
        
        todayNotifications = notificationsViewModel.filter { $0.isToday }
        previousNotifications = notificationsViewModel.filter { !$0.isToday }
    }
}

protocol NotificationProtocol {
    var icon: String { get }
    var isToday: Bool { get }
    var content: String { get }
    var updated: String { get }
}

class NotificationViewModel: NotificationProtocol {
    var id: Int
    var notification: Notification
    
    init(
        id: Int,
        notification: Notification
    ) {
        self.id = id
        self.notification = notification
    }
}

extension NotificationViewModel {
    var icon: String {
        switch notification.type {
        case .comment:
            return "ic_comment"
        case .like:
            return "ic-heart"
        case .followed:
            return "ic_follow"
        }
    }
    
    var isToday: Bool { notification.isToday }
    
    var content: String {
        switch notification.type {
        case .comment:
            return "\(notification.name) commented on your photo '\(notification.topic)'"
        case .like:
            return "\(notification.name) liked your reply on your photo '\(notification.topic)'"
        case .followed:
            return "\(notification.name) followed you!"
        }
        
    }
    
    var updated: String {
        if isToday {
            return "\(notification.updated) mins ago"
        } else {
            return "\(notification.updated) hours ago"
        }
        
    }
}
