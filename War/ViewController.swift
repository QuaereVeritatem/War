//
//  ViewController.swift
//  War
//
//  Created by Robert Martin on 6/2/16.
//  Copyright © 2016 Robert Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playARoundButton: UIButton!
    @IBOutlet weak var BackgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore: Int = 0
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore: Int = 0
    
    var cardNamesArray: [String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func playRoundTapped(sender: UIButton) {
        
        //randomized a number for the first card(imageview)
        var firstRandomNumber: Int = Int(arc4random_uniform(13))
        //construct a string with the random number
        var firstCardString: String = self.cardNamesArray[firstRandomNumber]
        //set first card image view to randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        //randomized a number for the second card(imageview)
        var secondRandomNumber: Int = Int(arc4random_uniform(13))
        //construct a string with the random number
        var secondCardString: String = self.cardNamesArray[secondRandomNumber]
        //set second card image view to randomized number
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        //Determine the higher card number
        //first number is larger, so update playerscore and the score label
        if firstRandomNumber > secondRandomNumber {
            //TODO first card is larger
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
        }
        else if firstRandomNumber == secondRandomNumber {
            //TODO numbers are equal
        }
        else {
            //second number is larger, so update enemyscore and the score label
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
    }

}

