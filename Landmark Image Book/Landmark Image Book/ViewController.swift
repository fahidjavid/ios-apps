//
//  ViewController.swift
//  Landmark Image Book
//
//  Created by Fahid Javid on 21/08/2017.
//  Copyright © 2017 Fahid Javid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNamesArray = [String]()
    var landmarkImagesArray = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Table vew setup
        tableView.dataSource = self
        tableView.delegate = self
        
        landmarkNamesArray.append("1")
        landmarkNamesArray.append("2")
        landmarkNamesArray.append("3")
        landmarkNamesArray.append("4")
        landmarkNamesArray.append("5")
        
        landmarkImagesArray.append(UIImage(named: "1.jpg")!)
        landmarkImagesArray.append(UIImage(named: "2.jpg")!)
        landmarkImagesArray.append(UIImage(named: "3.JPG")!)
        landmarkImagesArray.append(UIImage(named: "4.jpg")!)
        landmarkImagesArray.append(UIImage(named: "5.jpg")!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNamesArray.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    
        if editingStyle == .delete {
            landmarkNamesArray.remove(at: indexPath.row)
            landmarkImagesArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toImageVCSegue" {
            let destinationVC = segue.destination as! ImageViewController
            
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.chosenLandmarkName = landmarkNamesArray[indexPath.row]
        self.chosenLandmarkImage = landmarkImagesArray[indexPath.row]
        
        performSegue(withIdentifier: "toImageVCSegue", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = landmarkNamesArray[indexPath.row]
        
        return cell
    }

}

