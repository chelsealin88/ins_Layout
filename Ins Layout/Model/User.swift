//
//  User.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/27.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import Foundation
import UIKit

struct User {
    
    var avatar: String
    var id: String
    var post: String
    var followers: String
    var following: String
    var descirbe: String
    var timeLine: [UserTimeline]
    
}


struct UserTimeline {
    
    var id: String
    var avatar: UIImage?
    var post: String
    var photo: UIImage?
    
    init(id: String, avatarName: String, post: String, photoName: String) {
        self.id = id
        self.post = post
        print(avatarName, photoName)
        if let avatar = UIImage(named: avatarName), let photo = UIImage(named: photoName){
            self.avatar = avatar
            self.photo = photo
        } else {
            self.avatar = UIImage(named: avatarName)
            self.photo = UIImage(named: photoName)
        }
    }
    
}

