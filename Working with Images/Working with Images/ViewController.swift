//
//  ViewController.swift
//  Working with Images
//
//  Created by Fahid Javid on 20/08/2017.
//  Copyright © 2017 Fahid Javid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    var myInterger = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }


    @IBAction func changeBtnClicked(_ sender: Any) {
        
        if myInterger == 0 {
            imageView.image = UIImage(named: "image-2.jpg")
            myInterger += 1
        } else if myInterger == 1 {
            imageView.image = UIImage(named: "image-1.jpg")
            myInterger -= 1
        }
        
    }

}

