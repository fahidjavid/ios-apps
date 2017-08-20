//
//  SecondViewController.swift
//  Segues
//
//  Created by Fahid Javid on 20/08/2017.
//  Copyright © 2017 Fahid Javid. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var yourNameLabel: UILabel!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        yourNameLabel.text = "Your Name: \(username)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backBtnClicked(_ sender: Any) {
//        performSegue(withIdentifier: "fromSecondToFirst", sender: nil)
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
