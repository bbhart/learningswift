//
//  ViewController.swift
//  udemyTicTacToe
//
//  Created by Brian Hart on 8/28/17.
//  Copyright © 2017 Brian Hart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = TicTacToeGame()
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonTap(_ sender: UIButton) {
        if game.playerturn == TicTacToeGame.PlayerTurn.x {
            // Try to play a square
            if game.playASquare(square: (sender.tag - 1), mark: TicTacToeGame.SquareMark.x) {
                print("Played X on square \(sender.tag - 1)")
            } else {
                print("Player rejected on square \(sender.tag - 1)")
            }
        }
        print("User tapped button \(sender.tag)")
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game.printBoard()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

