//
//  NotificationsView.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/25/21.
//

import SwiftUI

struct NotificationsView: View {
    
    init() {
        UITableView.appearance().showsVerticalScrollIndicator = false
    }
    
    @StateObject var viewModel = NotificationsViewModel()
    
    var header: some View {
        HStack {
            Text("Notifications")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            Button {
                
            } label: {
                Image("ic_filter")
                    .resizable()
                    .frame(width: 22, height: 18)
                    .foregroundColor(.primary)
            }
        }
    }
    
    var body: some View {
        
        VStack {
            header
            List {
                Section(header: HStack {
                    Text("Today")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.black)
                        .padding()
                    Spacer()
                }
                .background(Color.white)
                .listRowInsets(EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 0,
                                trailing: 0))
                ) {
                    ForEach(viewModel.todayNotifications, id: \.id) { notification in
                        NotificationView(viewModel: notification)
                    }
                }
                
                Section(header: HStack {
                    Text("Yesterday")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.black)
                        .padding()
                    Spacer()
                }
                .background(Color.white)
                .listRowInsets(EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 0,
                                trailing: 0))
                ) {
                    ForEach(viewModel.previousNotifications, id: \.id) { notification in
                        NotificationView(viewModel: notification)
                    }
                }
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
