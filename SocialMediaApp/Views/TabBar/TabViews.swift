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
            selection = 2
        } label: {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                    .shadow(radius: 2)
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .foregroundColor(.appBlueColor)
                    .frame(width: 50, height: 50)
            }
        }
        .buttonStyle(TabButtonStyle())
        .offset(y: -20)
    }
    
    @State private var selection = 0
    
    var body: some View {
        ZStack {
            TabView(selection:$selection) {
                FeedView()
                    .tabItem {
                        SFSymbol.home
                    }
                    .tag(0)
                
                Text("Messages")
                    .tabItem {
                        SFSymbol.messages
                    }
                    .tag(1)
                
                PostView()
                    .tabItem {
                        Text("")
                    }
                    .tag(2)
                
                NotificationsView()
                    .tabItem {
                        SFSymbol.notifications
                    }
                    .tag(3)
                
                ProfileView()
                    .tabItem {
                        SFSymbol.profile
                    }
                    .tag(4)
            }
            .overlay(addButton, alignment: .bottom)
        }
    }
}
