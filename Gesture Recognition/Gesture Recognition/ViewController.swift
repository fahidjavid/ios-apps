//
//  ViewController.swift
//  Gesture Recognition
//
//  Created by Fahid Javid on 20/08/2017.
//  Copyright © 2017 Fahid Javid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myInteger = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changePicture))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    func changePicture() {
        
        if myInteger == 0 {
            imageView.image = UIImage(named: "image-1.jpg")
            nameLabel.text = "Fahid"
            myInteger += 1
        } else if myInteger == 1 {
            imageView.image = UIImage(named: "image-2.jpg")
            nameLabel.text = "Javid"
            myInteger -= 1
        }
        
    }

}

