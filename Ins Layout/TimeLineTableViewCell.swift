//
//  TimeLineTableViewCell.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/21.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit


protocol TimeLineTableViewCellDelegate {
    func passData(indexPath: IndexPath)
}


class TimeLineTableViewCell: UITableViewCell {

   
    @IBOutlet weak var idLebel: UILabel!
    @IBOutlet weak var timelineidLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var avatar: UIImageView! {
        didSet {
            avatar.layer.cornerRadius = 25
            avatar.clipsToBounds = true
            avatar.contentMode = .scaleAspectFill
        }
    }
    
    var delegate : TimeLineTableViewCellDelegate?
    var indexPath : IndexPath?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(passData))
     
        idLebel?.isUserInteractionEnabled = true
        idLebel?.addGestureRecognizer(tap)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: false)
        
    }

    // label tap
    @objc func passData(sender: UITapGestureRecognizer) {
        // todo: 判斷indexpath
        guard let indexPath = indexPath else { return }
        delegate?.passData(indexPath: indexPath)
    }
    
    func updateCell(_ timeline: UserTimeline) {
        
//        if let timeline = timeline as? TimeLine {
//            
//        }
        
        /* todo: 用protocol的方式判斷 type
        protocol { var xxx
         }
        */

        timelineidLabel.text = timeline.id
        idLebel?.text = timeline.id
        postImage?.image = timeline.photo
        avatar?.image = timeline.avatar
        postLabel?.text = timeline.post

        
    }
    
}
