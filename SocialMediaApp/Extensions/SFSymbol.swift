//
//  SFSymbol.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/24/21.
//

import SwiftUI

enum SFSymbol: String, View {
    case home = "cube.box"
    case messages = "envelope.badge"
    case notifications = "bell.badge"
    case profile = "person"
    case arrowLeft = "arrow.left"
    case option = "option"
    case check = "checkmark"
    case envelope = "envelope"
    case checkMarkSellFill = "checkmark.seal.fill"
    
    var body: some View {
        Image(systemName: rawValue)
    }
}
