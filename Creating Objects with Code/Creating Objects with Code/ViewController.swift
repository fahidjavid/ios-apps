//
//  ViewController.swift
//  Creating Objects with Code
//
//  Created by Fahid Javid on 18/08/2017.
//  Copyright © 2017 Fahid Javid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // view width and height
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        // A simple label
        let myLabel = UILabel()
        myLabel.text = "My coding label!"
        myLabel.textAlignment = .center
        
        myLabel.frame = CGRect(x: width * 0.1, y: height * 0.3, width: width * 0.8, height: 50)
        view.addSubview(myLabel)
        
        
        // button and event
        myButton.frame = CGRect(x: width * 0.2, y: height * 0.5, width: width * 0.6, height: 50)
        
        myButton.setTitle("myCoding Button", for: UIControlState.normal)
        myButton.setTitleColor(UIColor.gray, for: UIControlState.normal)
        
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControlEvents.touchUpInside)
        
    }

    func myAction() {
        print("You have clicked my button")
        myButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
    }
}

