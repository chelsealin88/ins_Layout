//
//  ProfileTableViewController.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/24.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController {
    
    
    var stories = [Story]()
    var timeLines = [TimeLine]()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        getAllData()
        
//        registerNib(nibname: "timelinecell")
//        registerNib(nibname: "simpleCell")

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 4
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
//        if section == 3 {
//            return timeLines.count
//        } else {
//            return 1
//        }
        return 1
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "bannerCell", for: indexPath) as! ImageTableViewCell
            return cell

        }; if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "heighligtCell", for: indexPath) as! StoryTableViewCell
            return cell
        }; if indexPath.section == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "buttonCell", for: indexPath) as! ButtonTableViewCell
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "timelineCell", for: indexPath) as! TimeLineTableViewCell
            let timeline = timeLines[indexPath.row]
            cell.updateCell(timeline)
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 250
        }; if indexPath.section == 1 {
            return 140
        } else if indexPath.section == 2 {
            return 50
        }
        return 100
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func registerNib(nibname: String) {
        let nib = UINib(nibName: nibname, bundle: .main)
        self.tableView.register(nib, forCellReuseIdentifier: nibname)
    }
    
    func getAllData() {
        stories = GetData.getStory()
        timeLines = GetData.getTimeline()
    }


}

extension ProfileTableViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "heighligtCollectionCell", for: indexPath) as! StoryCollectionViewCell
        let story = stories[indexPath.row]
        cell.heighlightImage.layer.cornerRadius = cell.heighlightImage.bounds.height / 2
        cell.updateCell(story)
        return cell
    }
    
    
}
