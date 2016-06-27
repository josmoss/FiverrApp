//
//  DetailViewController.swift
//  FiverrApp
//
//  Created by Joe Moss on 6/27/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var theCategory : Category?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let category = self.theCategory {
            
            self.detailNameLabel.text = category.category
            self.detailDescriptionLabel.text = category.descriptionString
            self.detailImageView.image = UIImage(named: category.imageNameString)
        }
    }
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailDescriptionLabel: UILabel!

}
