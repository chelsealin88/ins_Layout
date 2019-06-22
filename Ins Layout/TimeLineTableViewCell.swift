//
//  TimeLineTableViewCell.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/21.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class TimeLineTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var idLebel: UILabel!
    @IBOutlet weak var timelineidLabel: UILabel!
    @IBOutlet weak var postTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // todo: label tap 
    
}
