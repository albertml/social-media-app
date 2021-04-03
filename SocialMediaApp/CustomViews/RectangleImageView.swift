//
//  RectangleImageView.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 3/29/21.
//

import SwiftUI

struct RectangleImageView: View {
    var photoViewModel: PhotoViewModel!
    var width: CGFloat = 120
    var height: CGFloat = 100
    
    var body: some View {
        Image(photoViewModel.featuredPhoto.image)
            .resizable()
            .frame(width: width, height: height)
            .cornerRadius(5)
            .padding(3)
            .overlay(
                Rectangle()
                    .foregroundColor(.clear)
            )
    }
}

struct RectangleImageView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImageView(photoViewModel: nil)
    }
}
