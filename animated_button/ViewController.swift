//
//  ViewController.swift
//  animated_button
//
//  Created by Filip on 12.06.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    var counter = 2
    
    var timer = Timer()
    
    var isAnimating = false
    
    @objc func animated() {
        
        image.image = UIImage(named:"frame_\(counter)_delay-0.03s.png")
        counter += 1
        print(counter)
        
            if counter == 79 {
            
                counter = 2
            
            }
        
    }
   
    
    @IBAction func button(_ sender: Any) {
        
        //image.image = UIImage(named: "frame_03_delay-0.03s.png")
        
        if isAnimating {
            
            timer.invalidate()
            button.setTitle("Start Animation", for: [])
            isAnimating = false
            
        } else {
        
            timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(ViewController.animated), userInfo: nil, repeats: true)
            button.setTitle("Stop Animating", for: [])
            isAnimating = true
        }
        
    }
    
    
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

