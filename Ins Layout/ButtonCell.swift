//
//  ButtonCell.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/25.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

protocol ButtonCellDelegate {
    func toSimple()
    func toDetail()
}


class ButtonCell: UICollectionViewCell {
    
    var delegate: ButtonCellDelegate?
    
    
    @IBAction func simpleButton(_ sender: Any) {
        
        delegate?.toSimple() 
    }
    
    @IBAction func detailButton(_ sender: Any) {
        delegate?.toDetail()
        
    }
    
    
}
