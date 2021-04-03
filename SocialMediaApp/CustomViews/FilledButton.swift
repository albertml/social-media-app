//
//  FilledButton.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/27/21.
//

import SwiftUI

struct FilledButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(configuration.isPressed ? .gray : .white)
            .padding(10)
            .background(Color.accentColor)
            .cornerRadius(8)
    }
}
