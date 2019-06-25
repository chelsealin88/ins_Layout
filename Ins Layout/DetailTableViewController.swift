
//
//  DetailTableViewController.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/25.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    
    var data: TimeLine?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerNib(nibname: "timelinecell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "timelinecell", for: indexPath) as! TimeLineTableViewCell
        cell.updateCell(data!)
        cell.avatar.layer.cornerRadius = cell.avatar.frame.height / 2
        return cell
    }
    
    
    
    func registerNib(nibname: String) {
        let nib = UINib(nibName: nibname, bundle: .main)
        self.tableView.register(nib, forCellReuseIdentifier: nibname)
    }
    

}
