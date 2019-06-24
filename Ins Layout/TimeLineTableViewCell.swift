//
//  TimeLineTableViewCell.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/21.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit


protocol TimeLineTableViewCellDelegate {
    func passTitle()
}


class TimeLineTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var idLebel: UILabel!
    @IBOutlet weak var timelineidLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var avatar: UIImageView! {
        didSet {
            avatar.clipsToBounds = true
            avatar.contentMode = .scaleAspectFill
        }
    }
    
    var delegate : TimeLineTableViewCellDelegate?


    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(passTitle))
        idLebel.isUserInteractionEnabled = true
        idLebel.addGestureRecognizer(tap)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: false)

        // Configure the view for the selected state
    }

    // todo: label tap
    @objc func passTitle(sender: UITapGestureRecognizer) {
        delegate?.passTitle()
    }
    
    func updateCell(_ timeline: TimeLine) {
        timelineidLabel.text = timeline.id
        idLebel.text = timeline.id
        postImage.image = timeline.photo
        avatar.image = timeline.avatar
        postLabel.text = timeline.post
    }
    
}
