//
//  ProfileViewController.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/23.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var stories = [Story]()
    var cellStyle = InsCellStyle.simple
    
    enum InsCellStyle: String {
        case simple = "InsCell"
        case detail = "InsDetailCell"
    }
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var InsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAllData()
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
        case 0: return 1
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeighLightCell", for: indexPath) as! HeighlightTableViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func getAllData() {
        stories = GetData.getStory()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension ProfileViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "heightLightCollectionViewCell", for: indexPath) as! HeighlightCollectionViewCell
        let story = stories[indexPath.row]
        cell.image.layer.cornerRadius = cell.image.frame.height / 2
        cell.updateCell(story)
    
        return cell
    }
    
    
    @IBAction func cellButton(_ sender: Any) {
        cellStyle = .simple
        InsCollectionView.reloadData()
    }
    
    @IBAction func detailCellButton(_ sender: Any) {
        cellStyle = .detail
        InsCollectionView.reloadData()
        
    }
    
    
}

extension ProfileViewController : UICollectionViewDelegateFlowLayout {
    
    
    
    
}
