//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mirko Cukich on 11/3/17.
//  Copyright © 2017 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Ball Array that holds the 5 ball images w answers
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    // Radom number variable
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askBtn(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage() {
        // Generates random number
        randomBallNumber = Int(arc4random_uniform(4))
        // Based on random number generated, images switch on device
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    // Shake gesture detection
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

