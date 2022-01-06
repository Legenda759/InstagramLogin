//
//  Post.swift
//  Instagram
//
//  Created by Legenda_759 on 06/01/22.
//

import Foundation

class Post {
    var fullName: String? = ""
    var user_img: String? = ""
    var post_img: String? = ""
    var image2: String? = ""
    
    init(fullName: String, user_img: String, post_img: String, image2: String) {
        self.fullName = fullName
        self.user_img = user_img
        self.post_img = post_img
        self.image2 = image2
    }
}
