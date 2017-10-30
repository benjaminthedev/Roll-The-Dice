//
//  ViewController.swift
//  Roll The Dice
//
//  Created by Benjamin on 30/10/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Vars
    var randomDiceIndex1 = 0
    var randomDiceIndex2 = 0
    
    //Array
    let diceArr = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    //Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func rollBtnPressed(_ sender: Any) {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: diceArr[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArr[randomDiceIndex2])
        
    }
    

}

