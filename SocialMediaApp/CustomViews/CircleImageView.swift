//
//  CircleImageView.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/21/21.
//

import SwiftUI

struct CircleImageView: View {
    var name: String
    var isBordered = true
    var width: CGFloat = 50
    var height: CGFloat = 50
    
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: width, height: height)
            .cornerRadius(width / 2)
            .padding(3)
            .overlay(
                Circle()
                    .stroke(lineWidth: isBordered ? 2 : 0)
                    .foregroundColor(.appBlueColor)
            )
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(name: "user1")
    }
}
