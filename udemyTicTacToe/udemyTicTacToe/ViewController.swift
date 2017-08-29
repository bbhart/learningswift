//
//  ViewController.swift
//  udemyTicTacToe
//
//  Created by Brian Hart on 8/28/17.
//  Copyright © 2017 Brian Hart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonTap(_ sender: UIButton) {
        print("Tapped!")
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

