//
//  ProfileCollectionViewController.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/25.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

protocol ProfileCollectionViewControllerDelegate {
    func passData(data: TimeLine)
}

class ProfileCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var stories = [Story]()
    var timelines = [TimeLine]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
            return buttonCell
            
        default:
            let simpleCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SimpleCell", for: indexPath) as! SimpleCell
            let timeline = timelines[indexPath.row]
            simpleCell.updateCell(timeline)
            return simpleCell
            
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
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize = (UIScreen.main.bounds.width / 3 ) - 1

        switch (indexPath.section) {
        case 0: return CGSize(width: collectionView.bounds.width, height: 150.0)
        case 1: return CGSize(width: collectionView.bounds.width, height: 130.0)
        case 2: return CGSize(width: collectionView.bounds.width, height: 50.0)
        default: return CGSize(width: cellSize, height: cellSize)
            
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
