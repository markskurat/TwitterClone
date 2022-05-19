//
//  UploadTweetViewModel.swift
//  Twitter
//
//  Created by Mark Skurat on 5/18/22.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                self.didUploadTweet = true
            } else {
                // show error message to user
            }
        }
    }
}
