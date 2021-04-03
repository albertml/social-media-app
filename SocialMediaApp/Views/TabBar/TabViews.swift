//
//  TabViews.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/21/21.
//

import SwiftUI

struct TabButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.9 : 1)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
    }
}

struct TabViews: View {
    
    var addButton: some View {
        Button {
            
        } label: {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                    .shadow(radius: 2)
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .foregroundColor(.primary)
                    .frame(width: 50, height: 50)
            }
        }
        .buttonStyle(TabButtonStyle())
        .offset(y: -20)
    }
    
    var body: some View {
        ZStack {
            TabView {
                FeedView()
                    .tabItem {
                        SFSymbol.home
                    }
                
                Text("Messages")
                    .tabItem {
                        SFSymbol.messages
                    }
                
                NotificationsView()
                    .tabItem {
                        SFSymbol.notifications
                    }
                
                ProfileView()
                    .tabItem {
                        SFSymbol.profile
                    }
            }
            .overlay(addButton, alignment: .bottom)
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
