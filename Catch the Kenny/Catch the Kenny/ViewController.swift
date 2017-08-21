//
//  ViewController.swift
//  Catch the Kenny
//
//  Created by Fahid Javid on 20/08/2017.
//  Copyright © 2017 Fahid Javid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var kenny1: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    @IBOutlet weak var kenny6: UIImageView!
    @IBOutlet weak var kenny7: UIImageView!
    @IBOutlet weak var kenny8: UIImageView!
    @IBOutlet weak var kenny9: UIImageView!
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var HighScoreLabel: UILabel!
    
    var score = 0
    var counter = 0
    var timer = Timer()
    var hideTimer = Timer()
    var kennyArray = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let highScore = UserDefaults.standard.object(forKey: "highscore")
        
        if highScore == nil {
            HighScoreLabel.text = "0"
        }
        
        if let newScore = highScore as? Int {
            HighScoreLabel.text = "\(newScore)"
        }
        
        scoreLabel.text = "Score: \(score)"
        
        let rocognizer1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let rocognizer2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let rocognizer3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let rocognizer4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let rocognizer5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let rocognizer6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let rocognizer7 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let rocognizer8 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let rocognizer9 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        
        
        kenny1.addGestureRecognizer(rocognizer1)
        kenny2.addGestureRecognizer(rocognizer2)
        kenny3.addGestureRecognizer(rocognizer3)
        kenny4.addGestureRecognizer(rocognizer4)
        kenny5.addGestureRecognizer(rocognizer5)
        kenny6.addGestureRecognizer(rocognizer6)
        kenny7.addGestureRecognizer(rocognizer7)
        kenny8.addGestureRecognizer(rocognizer8)
        kenny9.addGestureRecognizer(rocognizer9)
        
        kenny1.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        kenny7.isUserInteractionEnabled = true
        kenny8.isUserInteractionEnabled = true
        kenny9.isUserInteractionEnabled = true
        
        
        // creating timers
        counter = 30
        timerLabel.text = "\(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.hideKennies), userInfo: nil, repeats: true)
        
        // creating arrays
        kennyArray.append(kenny1)
        kennyArray.append(kenny2)
        kennyArray.append(kenny3)
        kennyArray.append(kenny4)
        kennyArray.append(kenny5)
        kennyArray.append(kenny6)
        kennyArray.append(kenny7)
        kennyArray.append(kenny8)
        kennyArray.append(kenny9)
        
        // to hide right on start
        hideKennies()
        
    }

    func increaseScore(){
        
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
    
    func countDown(){
        counter -= 1
        timerLabel.text = "\(counter)"
        
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            
            // Checking highscore
            if self.score > Int(HighScoreLabel.text!)! {
                UserDefaults.standard.set(self.score, forKey: "highscore")
                HighScoreLabel.text = "\(self.score)"
            }
            
            let alert = UIAlertController(title: "Time", message: "Your time is up!", preferredStyle: UIAlertControllerStyle.alert)
            
            // OK action
            let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            alert.addAction(ok)
            
            // Reply action
            let reply = UIAlertAction(title: "Reply", style: UIAlertActionStyle.default, handler: { (UIAlertAction) in
                self.score = 0
                self.counter = 30
                self.scoreLabel.text = "Score: \(self.score)"
                self.timerLabel.text = "\(self.counter)"
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.hideKennies), userInfo: nil, repeats: true)
            })
            
            alert.addAction(reply)
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func hideKennies(){
    
        for kenny in kennyArray {
            kenny.isHidden = true
        }
        
        let randomNumber = Int(arc4random_uniform(UInt32(kennyArray.count-1)))
        
        kennyArray[randomNumber].isHidden = false
    }

}

