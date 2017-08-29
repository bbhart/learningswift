//
//  TicTacToeGame.swift
//  TicTacToe
//
//  Created by Brian Hart on 8/21/17.
//  Copyright © 2017 Brian Hart. All rights reserved.
//

import UIKit

class TicTacToeGame: NSObject {
    
    var playerturn: PlayerTurn
    
    override init() {
        super.init()
        self.resetBoard()
        self.playerturn = PlayerTurn.x
    }
    
    enum SquareMark: String {
        case x = "X"
        case o = "O"
        case blank = "-"
        
        var to_str: String {
            return self.rawValue
        }
    }
    
    enum PlayerTurn: String {
        case x = "X"
        case o = "O"
        
        var to_str: String {
            return self.rawValue
        }
    }
    
    var gameboard: [SquareMark] = []
    
    internal func resetBoard() {
        gameboard = Array(repeating: SquareMark.blank, count: 9)
    }
    
    public func printBoard() {
        // Debug function to print the game board
        for i in 0...8 {
            print(gameboard[i].to_str, terminator: "")
            if (i == 2) || (i == 5) {
                print()
            }
        }
    }
    
    public func playASquare(square: Int, mark: SquareMark) -> Bool {
        // Try to alocate a square with a mark
        // Returns true if it worked, false if it didn't (already occupied)
        
        if gameboard[square] != SquareMark.blank {
            print("Square \(square) is already marked.")
            return false
        }
        
        print("Marking square \(square) with \(mark)")
        gameboard[square] = mark
        
        return true
        
    }
    
    
}


