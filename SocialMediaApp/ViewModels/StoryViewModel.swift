//
//  StoryViewModel.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/25/21.
//

import Combine

protocol StoryProtocol {
    var id: Int { get }
    var featureImage: String { get }
    var photo: String { get }
    var name: String { get }
    var date: String { get }
    var isFavorite: Bool { get }
    var isBookmarked: Bool { get }
}

class StoryViewModel: Identifiable, StoryProtocol {
    
    private var story: Story
    
    init(story: Story) {
        self.story = story
    }
}

extension StoryViewModel {
    var id: Int { story.id }
    var featureImage: String { story.featuredImage }
    var photo: String { story.photo }
    var name: String { story.name }
    var date: String { story.date }
    var isFavorite: Bool { story.isFavorite }
    var isBookmarked: Bool { story.isBookmarked }
}
