//
//  ViewController.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/21.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
    @IBOutlet weak var tableView: UITableView!
    
    var stories = [Story]()
  
    var datas = ["1", "2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stories = GetData.getStory()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
        case 0: return 1
        case 1: return datas.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "timelineCell", for: indexPath) as! TimeLineTableViewCell
            let data = datas[indexPath.row]
            cell.mylabel.text = data
            return cell
            
        } else {
            
            let storyCell = tableView.dequeueReusableCell(withIdentifier: "storyCell", for: indexPath) as! StoryTableViewCell
            return storyCell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func registerNib(nibname: String) {
        let nib = UINib(nibName: nibname, bundle: .main)
        self.tableView.register(nib, forCellReuseIdentifier: nibname)
    }
    
}


extension TimelineViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCollectionCell", for: indexPath) as! StoryCollectionViewCell
        let story = stories[indexPath.row]
        cell.idLabel.text = story.id
        cell.avatavImage.image = story.avatar
        
        return cell
    }
    
    
}
