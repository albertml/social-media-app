//
//  FeaturedStoriesView.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/21/21.
//

import SwiftUI

struct FeaturedStoriesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Featured Stories")
                    .font(.system(size: 14, weight: .bold))
                Spacer()
            }
            HStack(spacing: 10) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "plus")
                                .foregroundColor(.appBlueColor)
                                .frame(width: 54, height: 54)
                                .background(Color.appBlueColor.opacity(0.1))
                                .cornerRadius(27)
                                .overlay(
                                    Circle()
                                        .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                )
                        })
                        
                        ForEach((1...4), id: \.self) { index in
                            CircleImageView(name: "user\(index)")
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
        }
        .padding(.top, 10)
        .padding(.horizontal, 20)
    }
}

struct FeaturedStoriesView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedStoriesView()
    }
}
