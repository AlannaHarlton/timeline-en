//
//  ViewController.swift
//  timeline-en
//
//  Created by Wataru Maeda on 2017/03/29.
//  Copyright © 2017 Wataru Maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet var tableView: UITableView!
    var arrPhotos: [String] = [
        "timeline-1.jpg",
        "timeline-2.jpg",
        "timeline-3.jpg",
        "timeline-4.jpg"
    ]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Table view
        tableView.rowHeight = 415 as CGFloat
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // (* Required) Number of rows
        return arrPhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // (* Required) Cell appearance
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedCell", for: indexPath) as! FeedCell
        cell.imgvPhoto.image = UIImage(named: arrPhotos[indexPath.row])
        cell.imgvPhoto.contentMode = .scaleAspectFill
        cell.imgvPhoto.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        // (* Optional) Header size zero
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
    {
        // (* Optional) Footer size zero
        return CGFloat.leastNormalMagnitude
    }
}

