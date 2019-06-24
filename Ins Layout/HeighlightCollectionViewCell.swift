//
//  HeighlightCollectionViewCell.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/24.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class HeighlightCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView! {
        didSet {
            image.clipsToBounds = true
            image.contentMode = .scaleAspectFill
        }
    }
    
    func updateCell(_ story: Story) {
        label.text = story.id
        image.image = story.avatar
        
    }
       
}
