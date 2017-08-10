//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Fahid Javid on 10/08/2017.
//  Copyright © 2017 Fahid Javid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = "Result is: "
    }
    
    @IBAction func plusBtn(_ sender: Any) {
        if let firstNumberValue = Int(firstNumber.text!) {
            if let secondNumberValue = Int(secondNumber.text!) {
                result = firstNumberValue + secondNumberValue
                resultLabel.text = String(result)
                resultLabel.text = "Result is: \(String(result))"

            }
        }
    }
    
    
    @IBAction func minusBtn(_ sender: Any) {
        if let firstNumberValue = Int(firstNumber.text!) {
            if let secondNumberValue = Int(secondNumber.text!) {
                result = firstNumberValue - secondNumberValue
                resultLabel.text = "Result is: \(String(result))"
                
            }
        }
    }
    
    @IBAction func divideBtn(_ sender: Any) {
        if let firstNumberValue = Int(firstNumber.text!) {
            if let secondNumberValue = Int(secondNumber.text!) {
                result = firstNumberValue / secondNumberValue
                resultLabel.text = "Result is: \(String(result))"
                
            }
        }
    }
    
    @IBAction func multiplyBtn(_ sender: Any) {
        if let firstNumberValue = Int(firstNumber.text!) {
            if let secondNumberValue = Int(secondNumber.text!) {
                result = firstNumberValue * secondNumberValue
                resultLabel.text = "Result is: \(String(result))"
                
            }
        }
    }
    
    @IBAction func remainderBtn(_ sender: Any) {
        if let firstNumberValue = Int(firstNumber.text!) {
            if let secondNumberValue = Int(secondNumber.text!) {
                result = firstNumberValue % secondNumberValue
                resultLabel.text = "Result is: \(String(result))"
                
            }
        }
    }

}

