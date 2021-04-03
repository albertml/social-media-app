//
//  OutlineButton.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/27/21.
//

import SwiftUI

struct OutlineButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(configuration.isPressed ? .gray : .accentColor)
            .padding(10)
            .background(
                RoundedRectangle(
                    cornerRadius: 8,
                    style: .continuous
                ).stroke(Color.accentColor)
        )
    }
}
