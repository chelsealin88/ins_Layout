//
//  TimeLineTableViewCell.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/21.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class TimeLineTableViewCell: UITableViewCell {
    
      @IBOutlet weak var id: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var timelineID: UILabel!
    @IBOutlet weak var post: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
