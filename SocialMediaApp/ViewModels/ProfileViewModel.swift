//
//  ProfileViewModel.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 3/29/21.
//

import Foundation

protocol ProfileProtocol {
    var featuredPhotosViewModels: [PhotoViewModel] { get }
}

class ProfileViewModel: ProfileProtocol {
    
    var featuredPhotosViewModels: [PhotoViewModel] {
        let photos: [PhotoViewModel] = [
            PhotoViewModel(photoId: 1, photo: Photo(image: "feat-photo-1")),
            PhotoViewModel(photoId: 2, photo: Photo(image: "feat-photo-2"))
        ]
        
        return photos
    }
}


protocol PhotoProtocol {
    var id: Int { get set }
    var featuredPhoto: Photo { get }
}

class PhotoViewModel: Identifiable, PhotoProtocol {
    
    var id: Int
    private var photo: Photo
    
    
    init(photoId: Int, photo: Photo) {
        self.id = photoId
        self.photo = photo
    }
}

extension PhotoViewModel {
    var featuredPhoto: Photo {
        return photo
    }
}
