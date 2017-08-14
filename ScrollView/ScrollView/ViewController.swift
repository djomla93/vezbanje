//
//  ViewController.swift
//  ScrollView
//
//  Created by iOS Akademija on 7/10/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var myScrollView: UIScrollView!
    var coolScrollView : UIScrollView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    var obj_1 = UIView()

    
    // firs load func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ScrollView Programmatically
        
        let x_point : CGFloat = 0
        let y_point : CGFloat = 0
        let widht = self.view.frame.size.width
        let heigh : CGFloat = 292
        let pages : CGFloat = 3
        
        
        coolScrollView = UIScrollView()
        coolScrollView.frame = CGRect(x: x_point, y: y_point, width: widht, height: heigh)
        coolScrollView.backgroundColor = UIColor.groupTableViewBackground
        coolScrollView.delegate = self
        
        coolScrollView.contentOffset = CGPoint(x: 0, y: 0)
        
        // coolScrollView.contentSize = CGSize(width: width * pages, height: height)
        
        coolScrollView.contentSize = CGSize(width: widht * pages, height: heigh)
        coolScrollView.contentSize.width = widht * pages
        
        coolScrollView.contentInset = UIEdgeInsets.zero
        coolScrollView.isDirectionalLockEnabled = false
        coolScrollView.bounces = true
        coolScrollView.isPagingEnabled = true
        coolScrollView.isScrollEnabled = true
        
        coolScrollView.showsHorizontalScrollIndicator = true
        coolScrollView.showsVerticalScrollIndicator = false
        coolScrollView.scrollIndicatorInsets = UIEdgeInsets.zero
        coolScrollView.indicatorStyle = .black
        
        coolScrollView.decelerationRate = 1000
        coolScrollView.flashScrollIndicators()
        coolScrollView.zoomScale = 1
        coolScrollView.maximumZoomScale = 10
        
        coolScrollView.bouncesZoom = true
        coolScrollView.scrollsToTop = true
        coolScrollView.keyboardDismissMode = UIScrollViewKeyboardDismissMode.none
        
        
        self.view.addSubview(coolScrollView)
        
        // Objects of scrollView
        
        obj_1 = UIView()
        obj_1.frame = CGRect(x: 20, y: (heigh / 2) - 25, width: 50, height: 50)
        obj_1.backgroundColor = UIColor.green
        coolScrollView.addSubview(obj_1)
        
        let obj_2 = UIView()
        obj_2.frame = CGRect(x: coolScrollView.contentSize.width - 20 - 50, y: (heigh - 2) - 25, width: 50, height: 50)
        obj_2.backgroundColor = UIColor.red
        coolScrollView.addSubview(obj_2)
        
        // moving lageb to front
        // myLabel.layer.zPosition = 1
        coolScrollView.layer.zPosition = -1
        
        self.view.addSubview(myButton)
        
    }
    
    // exec when clicked
    @IBAction func goTo_clicked(_ sender: Any) {
        
        coolScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)

    }
    
    
    // executed when scrolled
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        myLabel.text = "Did scroll"
        
        // make scrollView transparent
        myScrollView.alpha = 1 / (coolScrollView.contentOffset.x / 25)
        
        // moving obj_1
        obj_1.frame.origin.x = coolScrollView.contentOffset.x + 20 + coolScrollView.contentOffset.x
        
    }
    
    
    // firstly executed func when dragging begins
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        myLabel.text = "Will begin dragging"
    }
    
    // firstly executed when dragging ends
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        myLabel.text = "Will end dragging"
    }
    
    // secoundly exec when dragging ends
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        myLabel.text = "Did end dragging"
    }
    
    // firstly exec when decelarating scrollView
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        myLabel.text = "Will begin decelarating"
    }
    
    // secoundly exec when ended decelerating scrollView
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        myLabel.text = "Did end decelerating"
    }

    // exec when we used method (setContentOffset....nimated:true)
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        myLabel.text = "SetContentOffset"
    }
    
    // firstly exec func when zoomed
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        myLabel.text = "Will zoom"
    }
    
    // secoundly exec when zoomed
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        myLabel.text = "Did end zoom"
    }
    
    // secoundly executed when zoomed
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        myLabel.text = "Did zoom"
    }

    // exec when used method ScrollToTop
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        myLabel.text = "Scroll to top"
    }
    
    // firstly exec when use method ScrollTo Top
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        myLabel.text = "Should scroll to top"
        return true
    }
    
}

