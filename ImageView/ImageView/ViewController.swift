//
//  ViewController.swift
//  ImageView
//
//  Created by iOS Akademija on 7/3/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // image  // picture itself
        let EiffelImage1 = UIImage(named: "EiffelTower.jpg")!
        let EiffelImage2 = UIImage(named: "EiffelTower2.jpg")!
        
        // ImageView programatically
        
        let coolImageView = UIImageView()
        coolImageView.frame = CGRect(x: 62, y: 342, width: 115, height: 115)
        
        coolImageView.image = EiffelImage1
        coolImageView.highlightedImage = EiffelImage2
        
        coolImageView.isUserInteractionEnabled = true
        coolImageView.isHighlighted = false
        coolImageView.animationImages = [EiffelImage1, EiffelImage2]
        coolImageView.highlightedAnimationImages = [UIImage()]
        coolImageView.animationDuration = 0.5
        coolImageView.animationRepeatCount = 0
        coolImageView.startAnimating()
        
        self.view.addSubview(coolImageView)
        
        if coolImageView.isAnimating {
            print("Animating")
        } else {
            print("Not animating")
        }
        
        // Coordinates
        let webImageView_X : CGFloat = 197
        let webImageView_Y : CGFloat = 477
        let webImageView_Size : CGFloat = 115
        
        // ImageView programatically to load pic from url
        let webImageView = UIImageView(frame: CGRect(x: webImageView_X, y: webImageView_Y, width: webImageView_Size, height: webImageView_Size))
        
        
        //Load picture from URL
        let url = URL(string: "http://farm6.static.flickr.com/5108/5642460689_c1c5755e76.jpg")!
        let data = try! Data(contentsOf: url)
        let imageFromURL = UIImage(data: data)
        
        webImageView.image = imageFromURL
        
        
        self.view.addSubview(webImageView)
    }



}

