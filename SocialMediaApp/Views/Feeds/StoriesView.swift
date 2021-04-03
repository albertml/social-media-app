//
//  StoriesView.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/24/21.
//

import SwiftUI

struct StoriesView<V: StoryProtocol>: View {
    
    var viewModel: V
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10) {
                Image(viewModel.featureImage)
                    .resizable()
                    .cornerRadius(5)
                HStack {
                    CircleImageView(
                        name: viewModel.photo,
                        isBordered: false
                    )
                    VStack(alignment: .leading) {
                        Text(viewModel.name)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.black)
                        Text(viewModel.date)
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    HStack(spacing: 20) {
                        Button(action: {
                            
                        }, label: {
                            Image("ic-heart")
                                .resizable()
                                .frame(width: 20, height: 20)
                        })
                        Button(action: {
                            
                        }, label: {
                            Image("ic-bookmark")
                                .resizable()
                                .frame(width: 18, height: 20)
                        })
                    }
                }
                .padding(.horizontal, 15)
                .padding(.bottom, 10)
            }
        }
        .background(Color.white)
        .cornerRadius(20)
    }
}
