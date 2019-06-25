//
//  SimpleCell.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/25.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

protocol SimpleCellDelegate {
    func selected()
}

class SimpleCell: UICollectionViewCell {
    
    
    
    var timelines = [TimeLine]()
    
    @IBOutlet weak var image: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCell(_ timeline: TimeLine) {
        image.image = timeline.photo
    }
    
    


}
