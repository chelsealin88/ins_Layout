//
//  ProfileCollectionViewController.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/25.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ProfileCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout, ButtonCellDelegate {
    
    enum InsCellType: String {
        case simple = "SimpleCell"
        case detail = "DetailCell"
    }
    
    var stories = [Story]()
    var timelines = [TimeLine]()
    var celltype = InsCellType.simple
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        registerNib(nibname: "DetailCell")
        registerNib(nibname: "SimpleCell")
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        print(stories)
        print(timelines)
    }
    
    
    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 3 {
            return timelines.count
        }
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: celltype.rawValue, for: indexPath)
        
        switch indexPath.section {
        case 0:
            let profileCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
            return profileCell
        case 1:
            let storyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            storyCell.stories = self.stories
            return storyCell
            
        case 2:
            let buttonCell = collectionView.dequeueReusableCell(withReuseIdentifier: "buttonCell", for: indexPath) as! ButtonCell
            buttonCell.delegate = self
            return buttonCell
            
        default:
            let timeline = timelines[indexPath.row]
            guard let inscellType = InsCellType(rawValue: celltype.rawValue) else { return UICollectionViewCell()}
            switch inscellType {
            case .simple:
                guard let simpleCell = cell as? SimpleCell else { return UICollectionViewCell()}
                let timeline = timelines[indexPath.row]
                simpleCell.updateCell(timeline)
                return simpleCell
            default:
                guard let detailCell = cell as? DetailCell else { return UICollectionViewCell()}
                detailCell.avatar.layer.cornerRadius = detailCell.avatar.frame.height / 2
                detailCell.updateCell(timeline)
                return detailCell
                
            }
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.section == 3 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "DetailTableViewController") as! DetailTableViewController
            let data = timelines[indexPath.row]
            vc.data = data
            navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    // change layout button
    func toSimple() {
        print("tap simple")
        celltype = InsCellType.simple
        self.collectionView.reloadData()
    }
    
    func toDetail() {
        print("tap detail")
        celltype = InsCellType.detail
        self.collectionView.reloadData()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize = (UIScreen.main.bounds.width / 3 ) - 1
        
        switch (indexPath.section) {
        case 0: return CGSize(width: collectionView.bounds.width, height: 150.0)
        case 1: return CGSize(width: collectionView.bounds.width, height: 130.0)
        case 2: return CGSize(width: collectionView.bounds.width, height: 50.0)
        default:
            
            if celltype == .simple {
                return CGSize(width: cellSize, height: cellSize)
            } else {
              return CGSize(width: collectionView.bounds.width, height: 500.0)
            }
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func registerNib(nibname: String) {
        let nib = UINib(nibName: nibname, bundle: .main)
        self.collectionView.register(nib, forCellWithReuseIdentifier: nibname)
    }
    
    
}
