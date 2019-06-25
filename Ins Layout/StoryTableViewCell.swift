//
//  StoryTableViewCell.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/21.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class StoryTableViewCell: UITableViewCell {
    
    let stories = [Story]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        collectionView.dataSource = self
//        collectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
