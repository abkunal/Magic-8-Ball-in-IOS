//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kunal Yadav on 11/04/19.
//  Copyright © 2019 Kunal Yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let images = ["ball1", "ball2", "ball3","ball4","ball5"]
    var randomIndex : Int = 0
    
    @IBOutlet weak var randomImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func askRandom(_ sender: UIButton) {
        updateBall()
    }
    
    func updateBall() {
        randomIndex = Int(arc4random_uniform(5))
        
        randomImage.image = UIImage(named: images[randomIndex])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
}

