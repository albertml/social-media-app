//
//  FeaturedPhotosView.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 3/29/21.
//

import SwiftUI

struct FeaturedPhotosView: View {
    
    var featuredPhotosViewModels: [PhotoViewModel] = []
    
    var body: some View {
        VStack {
            HStack {
                Text("Featured Photos")
                    .font(.system(size: 18, weight: .bold))
                Spacer()
            }
            HStack(spacing: 10) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(featuredPhotosViewModels, id: \.id) { viewModel in
                            RectangleImageView(photoViewModel: viewModel)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
        }
    }
}
