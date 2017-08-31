//
//  ViewController.swift
//  udemyDiceRoller
//
//  Created by Brian Hart on 8/31/17.
//  Copyright © 2017 Brian Hart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice: UIImageView!
    
    
    @IBOutlet weak var die1: UIImageView!
    @IBOutlet weak var die2: UIImageView!
    
    @IBAction func roll(_ sender: Any) {
        //var dice: (UInt32, UInt32) = (0, 0)
        
        let dice = (arc4random_uniform(5) + 1, arc4random_uniform(5) + 1)
        print("Rolled \(dice)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

