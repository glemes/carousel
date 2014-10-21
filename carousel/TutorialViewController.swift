//
//  TutorialViewController.swift
//  carousel
//
//  Created by Giovana Lemes on 10/20/14.
//  Copyright (c) 2014 Giovana Lemes. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1280, height: 568)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        // Load the pages that are now on screen
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        pageControl.currentPage = page
        if page == 3 {
            UIView.animateWithDuration(0.4, animations: {
                
                self.imageView.alpha = 1
            })
    }
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
    }


    
}
