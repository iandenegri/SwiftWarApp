//
//  ViewController.swift
//  AppOne
//
//  Created by Ian Denegri on 10/5/18.
//  Copyright © 2018 Ian Denegri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func dealTapped(_ sender: Any) {
            // On tap of the button this fun is assigned to this code will carry out.
        
            // The code below will randomly create two ints ranging from 2-14 to represent the value of the cards.
        let leftRandomNumber = (arc4random_uniform(13) + 2)
        let rightRandomNumber = (arc4random_uniform(13) + 2)
        
            // Adding the ints to the end of the card string to specify which image is being displayed.
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
            // Compare the two numbers generated and give points based off that.
        
        if leftRandomNumber > rightRandomNumber {
                // Update score
            leftScore += 1
                // Update label
            leftScoreLabel.text = String(leftScore)
        }
            
        else if leftRandomNumber < rightRandomNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
            
        else if leftRandomNumber == rightRandomNumber {
            // Blank is pass I guess?
        }
    }
}

