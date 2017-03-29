# Code Together: Let's make iPhone app in an hour

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/sample.gif" /></div>

  Thank you for visiting our account. We are going to make a simple SNS app in an hour. If would you like to study yourself before hands-on, or review what you have learned in the session, please use the following material.

## Meetup
We are providing free hands-on on a monthly basis

https://www.meetup.com/iOS-Development-Meetup-for-Beginner/

## Do you need a tutor?
We also hold face-to-face or group lesson for individual interested in making iOS app themselves

http://ios-class-for-beginner.esy.es/

## Development Environment
  Xcode 8.1 / Swift 3

## Full procedure

#### 0, Create your project

> 0-1. Open Xcode 

> 0-2. Select "Create a new Xcode project"

> 0-3. Select "Single View Application" and then tap "Next"

> 0-4. Fill "Product name" and then tap "Next"

> 0-5. Select the place for saving your project and then tap "Create"

#### 1, Collect resources → Drag & Drop your resources into your project
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/0.png" /></div>
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/0.gif" /></div>

#### 2, Design app
> 2-1. Drap & Drop "UITableView" from UI components
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/1.gif" /></div>

> 2-2. Resize UITableView. After that, set "Autoresizing" for adjusting frame depending on devices
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/2.gif" /></div>

> 2-3. Drap & Drop "UITableViewCell" from UI components
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/3.gif" /></div>

> 2-4. After added "UIImageView", "UILabel" on the cell, do the same process of 2-2.
  ★  It might be easy to <a href="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/4.png">change tableView style</a> to "Grouped"

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/4.gif" /></div>

  Your storyboard may look like this
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/5.png" /></div>

#### 3, Add a file subclassed of "UITableViewCell"
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/5.gif" /></div>


#### 4, Connect UI components on Storyboard to the classes
  ★  control + drag in storyboard to create a control segue
  > 4-1. UITableViewCell.swift
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/6.gif" /></div>

  > 4-2. ViewController.swift
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/timeline-en/blob/master/timeline-en/Resources/7.gif" /></div>


#### 5, Add code blocks in ViewController.swift

★ It's preferable to write following code yourself. It will help you to understand code more.

```Swift  
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
```
