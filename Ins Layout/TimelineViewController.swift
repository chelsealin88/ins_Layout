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
//    var timelines = [UserTimeline]()
    var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getAllData()

        let navigationBar = navigationController?.navigationBar
        navigationBar?.tintColor = .black
        UIApplication.shared.statusBarView?.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)

        registerNib(nibname: "timelinecell")
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: nil, action: nil)
        
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
        case 0: return 1
        case 1: return users.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "timelinecell", for: indexPath) as! TimeLineTableViewCell
            let timeline = users[indexPath.row].timeLine[indexPath.row]
            cell.updateCell(timeline)
            cell.delegate = self
            cell.indexPath = indexPath
            return cell
            
        } else {
        
            let storyCell = tableView.dequeueReusableCell(withIdentifier: "storyCell", for: indexPath) as! StoryTableViewCell
            return storyCell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 120
        } else {
            return UITableView.automaticDimension
        }
    }

    func registerNib(nibname: String) {
        let nib = UINib(nibName: nibname, bundle: .main)
        self.tableView.register(nib, forCellReuseIdentifier: nibname)
    }
    
    func getAllData () {
        stories = GetData.getStory()
        users = GetData.getUserData()
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
        cell.updateCell(story)        
        return cell
    }
    
    
}


extension UIApplication {
    var statusBarView: UIView? {
        if responds(to: Selector("statusBar")) {
            return value(forKey: "statusBar") as? UIView
        }
        return nil
    }
}

extension TimelineViewController : TimeLineTableViewCellDelegate {
    
    
    
    func passData(indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileCollectionViewController") as! ProfileCollectionViewController
        vc.stories = self.stories
        vc.user = users[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}
