//
//  FeedView.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/21/21.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var feedsViewModel = FeedsViewModel()
    
    var headerView: some View {
        HStack {
            Text("Feed")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .renderingMode(.original)
                    .font(.title2)
                
            })
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            headerView
                .background(Color.white)
            FeaturedStoriesView()
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                    ForEach(feedsViewModel.stories, id: \.id) { storyViewModel in
                        StoriesView(viewModel: storyViewModel)
                    }
                }
                .padding(20)
                Spacer()
            }
        }
        .background(Color.appGrayColor)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
