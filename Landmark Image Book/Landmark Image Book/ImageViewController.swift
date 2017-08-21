//
//  ImageViewController.swift
//  Landmark Image Book
//
//  Created by Fahid Javid on 21/08/2017.
//  Copyright © 2017 Fahid Javid. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageNameLabel: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage();

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.image = selectedLandmarkImage
        imageNameLabel.text = selectedLandmarkName
    }
}
