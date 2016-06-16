//
//  ViewController.swift
//  War
//
//  Created by Jan Michael Chan on 14/01/16.
//  Copyright © 2016 Channies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playAroundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    var playerScore:Int = 0
    var enemyScore:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        //self.playAroundButton.setTitle("Play Round", forState: UIControlState.Normal)
        let firstCard = arc4random_uniform(13) + 1
        let secondCard = arc4random_uniform(13) + 1
        let firstCardName = String(format: "card%i", firstCard)
        let secondCardName = String(format: "card%i", secondCard)
        self.firstCardImageView.image = UIImage(named: firstCardName)
        self.secondCardImageView.image = UIImage(named: secondCardName)
        
        if(firstCard > secondCard)
        {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }
        else if(firstCard == secondCard)
        {
            //TODO: card are equal
        }
        else
        {
            enemyScore++
            enemyScoreLabel.text = String(enemyScore)
        }
    }

}

