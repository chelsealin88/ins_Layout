//
//  ProfileCell.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/25.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    

    @IBOutlet weak var avatar: UIImageView! {
        didSet {
            avatar.layer.cornerRadius = 45
        }
    }
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var describeLabel: UILabel!
    
    
    func updateCell(_ user: User) {
        
        avatar.image = UIImage(named: user.avatar)
        postLabel.text = user.post
        followersLabel.text = user.followers
        followingLabel.text = user.following
        idLabel.text = user.id
        describeLabel.text = user.descirbe
    }
}
