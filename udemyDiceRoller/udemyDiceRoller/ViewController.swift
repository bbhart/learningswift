//
//  ViewController.swift
//  udemyDiceRoller
//
//  Created by Brian Hart on 8/31/17.
//  Copyright © 2017 Brian Hart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    @IBOutlet weak var die1: UIImageView!
    @IBOutlet weak var die2: UIImageView!
    
    @IBAction func roll(_ sender: Any) {
        rollDice()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
        rollDice()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollDice()
        }
    }
    
    internal func rollDice() {
        let dice = (arc4random_uniform(5) + 1, arc4random_uniform(5) + 1)
        print("Rolled \(dice)")
        
        die1.image = UIImage(named: "dice\(dice.0).png")
        die2.image = UIImage(named: "dice\(dice.1).png")

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

