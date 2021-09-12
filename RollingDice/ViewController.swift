//
//  ViewController.swift
//  RollingDice
//
//  Created by 安子璠 on 9/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgOne: UIImageView!
    @IBOutlet weak var imgTwo: UIImageView!
    
    @IBOutlet weak var totalScore: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func rollDices() -> Array<Int>{
        let diceOne = Int.random(in: 1...6)
        let diceTwo = Int.random(in: 1...6)
        
        imgOne.image = UIImage(named: "Dice\(diceOne)")
        imgTwo.image = UIImage(named: "Dice\(diceTwo)")
        
        return [diceOne, diceTwo]
    }
    
    @IBAction func below7Pressed(_ sender: Any) {
        
        let rollResult = rollDices()
        
        if rollResult[0] + rollResult[1] < 7 {
            score += 1
        }else{
            score -= 1
        }
        
        totalScore.text = "Score = \(score)"
        
    }
    @IBAction func lucky7Pressed(_ sender: Any) {
        
        let rollResult = rollDices()
        
        if rollResult[0] + rollResult[1] == 7 {
            score += 7
        }else{
            score -= 7
        }
        
        totalScore.text = "Score = \(score)"
        
    }
    @IBAction func above7Pressed(_ sender: Any) {
        let rollResult = rollDices()
        
        if rollResult[0] + rollResult[1] > 7 {
            score += 1
        }else{
            score -= 1
        }
        
        totalScore.text = "Score = \(score)"
    }


}

