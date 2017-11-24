//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Fouche, George (GE Healthcare) on 11/14/17.
//  Copyright © 2017 George Fouche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    
    
    func newBallImage(){
        randomBallNumber = Int (arc4random_uniform(4))
        imageView.image = UIImage(named:ballArray[randomBallNumber])
        
    }


}

