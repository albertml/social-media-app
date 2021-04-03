//
//  NotificationView.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/25/21.
//

import SwiftUI

struct NotificationView<N: NotificationProtocol>: View {
    var viewModel: N
    var iconView: some View {
        ZStack {
            Circle()
                .fill()
                .foregroundColor(.white)
                .frame(width: 56, height: 56)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: 0.0, y: 0.0)
                .opacity(0.1)
            Image(viewModel.icon)
                .resizable()
                .frame(width: 23, height: 22)
            
            if viewModel.isToday {
                Circle()
                    .fill()
                    .foregroundColor(.red)
                    .frame(width: 16, height: 16)
                    .offset(x: -26, y: -15)
            }
        }
    }
    
    var contentView: some View {
        VStack(alignment: .leading) {
            Text(viewModel.content)
                .font(.system(size: 14, weight: .regular))
            HStack {
                Image("ic_clock")
                Text(viewModel.updated)
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.gray)
            }
        }
    }
    
    var optionView: some View {
        VStack {
            Spacer()
                .frame(height: 25)
            Image("ic_options")
                .resizable()
                .frame(width: 2, height: 10)
            Spacer()
        }
    }
    
    var body: some View {
        HStack(spacing: 15) {
            iconView
            contentView
            Spacer()
            optionView
        }
        .frame(height: 100)
        .padding(.horizontal, 0)
    }
}
