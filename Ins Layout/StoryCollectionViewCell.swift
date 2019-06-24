//
//  StoryCollectionViewCell.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/21.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var heighlightImage: UIImageView! {
        didSet {
            heighlightImage.clipsToBounds = true
            heighlightImage.contentMode = .scaleAspectFill
        }
    }
    @IBOutlet weak var heighlightText: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var avatavImage: UIImageView! {
        didSet {
            avatavImage.layer.cornerRadius = 35
            avatavImage.clipsToBounds = true
            avatavImage.contentMode = .scaleAspectFill
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCell(_ story: Story) {
        idLabel?.text = story.id
        avatavImage?.image = story.avatar
        heighlightText?.text = story.id
        heighlightImage?.image = story.avatar
        
    }
    
}
