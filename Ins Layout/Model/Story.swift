//
//  UserData.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/21.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import Foundation
import UIKit


class Story {
    
    var id: String
    var avatar: UIImage
    
    init(id: String, avatarName: String) {
        self.id = id
        if let avatar = UIImage(named: avatarName) {
            self.avatar = avatar
        } else {
            self.avatar = UIImage(named: "default")!
        }
    }

}





