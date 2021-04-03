//
//  Story.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/24/21.
//

import Foundation

struct Story: Hashable {
    let id: Int
    let featuredImage: String
    let photo: String
    let name: String
    let date: String
    let isFavorite: Bool
    let isBookmarked: Bool
}
