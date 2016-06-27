//
//  FiverrTableViewController.swift
//  FiverrApp
//
//  Created by Joe Moss on 6/27/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class FiverrTableViewController: UITableViewController {
    
    var categoriesArray = [Category]()
    var currentCategory : Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let c = Category()
        c.category = "Business"
        c.descriptionString = "biz stuff"
        c.imageNameString = "icon-1"
        
        self.categoriesArray.append(c)
        
        let x = Category()
        x.category = "Advertising"
        x.descriptionString = "ad stuff"
        x.imageNameString = "icon-2"
        
        self.categoriesArray.append(x)
        
        let y = Category()
        y.category = "Programming"
        y.descriptionString = "programming stuff"
        y.imageNameString = "icon-3"
        
        self.categoriesArray.append(y)
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categoriesArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CategoryTableViewCell
        
        
        let c = self.categoriesArray[indexPath.row]
        
        cell.categoryNameLabel.text = c.category
        cell.descriptionLabel.text = c.descriptionString
        cell.categoryImageView.image = UIImage(named: c.imageNameString)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentCategory = self.categoriesArray[indexPath.row]
        
        self.performSegueWithIdentifier("DetailSegue", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DetailSegue" {
            
            if let controller = segue.destinationViewController as? DetailViewController {
                controller.theCategory = self.currentCategory
            
        } else {
            print("Not the correct segue")
        }
    }
    
}
}
