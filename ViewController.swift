//
//  ViewController.swift
//  War
//
//  Created by Hali Medina on 7/6/20.
//  Copyright © 2020 Hannabeth Medina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        rightCardBack.layer.cornerRadius=15.0
        leftCardBack.layer.cornerRadius=15.0
        // Do any additional setup after loading the view.
    }
    
    // MARK: Properties
    
    @IBOutlet weak var leftCardImage: UIImageView!
    
    @IBOutlet weak var rightCardImage: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var computerScore: UILabel!
    
    @IBOutlet weak var rightCardBack: UIButton!
    
    @IBOutlet weak var leftCardBack: UIButton!
    
    var pScore = 0
    var cScore = 0
    
    
    
    //var cardNums = [Int]
    
    
    
    @IBAction func dealNewCards(_ sender: UIButton) {
        let leftCardNum = Int.random(in: 2...14)
        let rightCardNum = Int.random(in: 2...14)
        
        let leftCardSuit = Int.random(in: 1...4)
        let rightCardSuit = Int.random(in: 1...4)
        
        leftCardImage.image = UIImage(named: "\(leftCardSuit)card\(leftCardNum)")

        rightCardImage.image = UIImage(named: "\(rightCardSuit)card\(rightCardNum)")
        
        if leftCardNum > rightCardNum {
            // player scores
            pScore += 1
            playerScore.text = String(pScore)
            leftCardBack.backgroundColor = .green
            rightCardBack.backgroundColor = .red
            
        } else if rightCardNum > leftCardNum{
            // computer scores
            cScore += 1
            computerScore.text = String(cScore)
            rightCardBack.backgroundColor = .green
            leftCardBack.backgroundColor = .red
            
        } else {
            // tie (no one scores)
            rightCardBack.backgroundColor = .black
            leftCardBack.backgroundColor = .black
        }
    }
    
    

}

