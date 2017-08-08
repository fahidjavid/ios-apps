//
//  ViewController.swift
//  Another App
//
//  Created by Fahid Javid on 08/08/2017.
//  Copyright © 2017 Fahid Javid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myImage: UIImageView!

    @IBOutlet weak var lableFahid: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeLabel(_ sender: Any) {
        lableFahid.text = "Hello World!"
    }
    
    
}

