//
//  ViewController.swift
//  CoreAnimationTutorial
//
//  Created by Jameson Quave on 1/6/15.
//  Copyright (c) 2015 JQ Software LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        let redLayer = CALayer()
        
        redLayer.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        redLayer.backgroundColor = UIColor.redColor().CGColor
        
        // Round corners
        redLayer.cornerRadius = 25
        
        // Set border
        redLayer.borderColor = UIColor.blackColor().CGColor
        redLayer.borderWidth = 10
        
        redLayer.shadowColor = UIColor.blackColor().CGColor
        redLayer.shadowOpacity = 0.8
        redLayer.shadowOffset = CGSizeMake(2, 2)
        redLayer.shadowRadius = 3
        
        self.view.layer.addSublayer(redLayer)
        
        
        let imageLayer = CALayer()
        let image = UIImage(named: "ButterflySmall.jpg")!
        imageLayer.contents = image.CGImage
        
        imageLayer.frame = CGRect(x: 0, y: 100, width: image.size.width, height: image.size.height)
        imageLayer.contentsGravity = kCAGravityResizeAspect
        imageLayer.contentsScale = UIScreen.mainScreen().scale
        self.view.layer.addSublayer(imageLayer)
        
        
        // Create a blank animation using the keyPath "cornerRadius", the property we want to animate
        let animation = CABasicAnimation(keyPath: "shadowRadius")

        // Set the starting value
        animation.fromValue = redLayer.cornerRadius

        // Set the completion value
        animation.toValue = 0

        // How may times should the animation repeat?
        animation.repeatCount = 1000

        // Finally, add the animation to the layer
        redLayer.addAnimation(animation, forKey: "cornerRadius")
        
        
    }

}

