//
//  ViewController.swift
//  udemyAnimate
//
//  Created by Brian Hart on 8/18/17.
//  Copyright © 2017 Brian Hart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentImage: Int = 0
    enum Direction { case forward, reverse }
    
    @IBAction func play(_ sender: Any) {
    }
    
    @IBAction func next(_ sender: Any) {
        img.image = UIImage(named: getNextImage(Direction.forward))
    }
    
    @IBAction func prev(_ sender: Any) {
        img.image = UIImage(named: getNextImage(Direction.reverse))
    }
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getNextImage(_ _direction: Direction) -> String {
        let filenameFormat = "frame_%02d_delay-0.06s.png"
        if _direction == .forward {
            self.currentImage+=1
            if self.currentImage > 22 {
                self.currentImage = 0
            }
        } else if _direction == .reverse {
            self.currentImage-=1
            if self.currentImage < 0 {
                self.currentImage = 22
            }
        }
        let filename = String(format: filenameFormat, currentImage)
        print("Moving to file \(filename)")
        return filename
    }
}

