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
    var playing: Bool = true
    var timer = Timer()
    
    
    enum Direction { case forward, reverse }
    
    @IBOutlet weak var playbutton: UIButton!
    
    @IBAction func play(_ sender: Any) {
        if timer.isValid {
            timer.invalidate()
            playbutton.setTitle("Play", for: [])
        } else {
        
            timer = Timer.scheduledTimer(timeInterval: 0.06, target: self, selector: #selector(ViewController.nextImage), userInfo: nil, repeats: true)
            playbutton.setTitle("Stop", for: [])
        }
    }
    
    @IBAction func nextImage(_ sender: Any) {
        img.image = UIImage(named: getNextImage(Direction.forward))
    }
    
    @IBAction func prevImage(_ sender: Any) {
        img.image = UIImage(named: getNextImage(Direction.reverse))
    }
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Fade in
        img.alpha = 0
        UIView.animate(withDuration: 3) {
            self.img.alpha = 1
        }
        
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
        return filename
    }
}

