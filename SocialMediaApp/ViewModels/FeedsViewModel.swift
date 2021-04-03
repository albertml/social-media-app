//
//  FeedsViewModel.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/24/21.
//

import Combine

protocol FeedsProtocol {
    var stories: [StoryViewModel] { get set }
}

final class FeedsViewModel: ObservableObject, FeedsProtocol {
    @Published var stories: [StoryViewModel] = []
    
    init() {
        stories = [
            StoryViewModel(story: .init(
                id: 0,
                featuredImage: "stories1",
                photo: "user1",
                name: "Grant Marshall",
                date: "January 09, 2020",
                isFavorite: true,
                isBookmarked: false
            ))
            ,
            StoryViewModel(story: .init(
                id: 1,
                featuredImage: "stories2",
                photo: "user2",
                name: "Danny Green",
                date: "January 09, 2020",
                isFavorite: true,
                isBookmarked: false
            )),
            StoryViewModel(story: .init(
                id: 2,
                featuredImage: "stories1",
                photo: "user3",
                name: "Paksit Bilbil",
                date: "January 09, 2020",
                isFavorite: true,
                isBookmarked: false
            ))
        ]
    }
}
