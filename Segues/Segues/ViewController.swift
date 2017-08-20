//
//  ViewController.swift
//  Segues
//
//  Created by Fahid Javid on 20/08/2017.
//  Copyright © 2017 Fahid Javid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var nameText: UITextField!
    
    var name = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "fromFirstToSecondSegue" {
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.username = name
        }
    }
    

    @IBAction func saveBtnClicked(_ sender: Any) {
        
        name = nameText.text!
        
        performSegue(withIdentifier: "fromFirstToSecondSegue", sender: nil)
    }

}

