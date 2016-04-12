//
//  IntroViewController.swift
//  Carousel
//
//  Created by Hobgood, Chad on 4/9/16.
//  Copyright © 2016 Hobgood, Chad. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introImage: UIImageView!
    @IBOutlet weak var introTile1: UIImageView!
    @IBOutlet weak var introTile2: UIImageView!
    @IBOutlet weak var introTile3: UIImageView!
    @IBOutlet weak var introTile4: UIImageView!
    @IBOutlet weak var introTile5: UIImageView!
    @IBOutlet weak var introTile6: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scrollView.contentSize = introImage.image!.size
        scrollView.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
        

        // Tile 1
        
        let oneOffset = Float(scrollView.contentOffset.y)
        
        let oneTx = convertValue(CGFloat(oneOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        let oneTy = convertValue(CGFloat(oneOffset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        
        let oneRotation = convertValue(CGFloat(oneOffset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        introTile1.transform = CGAffineTransformMakeTranslation(CGFloat(oneTx),CGFloat(oneTy))
        introTile1.transform = CGAffineTransformRotate(introTile1.transform, CGFloat(Double(oneRotation) * M_PI / 180))
        
        // Tile 2
        
        let twoOffset = Float(scrollView.contentOffset.y)
        
        let twoTx = convertValue(CGFloat(twoOffset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        let twoTy = convertValue(CGFloat(twoOffset), r1Min: 0, r1Max: 568, r2Min: -225, r2Max: 0)
        
        let twoScale = convertValue(CGFloat(twoOffset), r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        
        let twoRotation = convertValue(CGFloat(twoOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        
        introTile2.transform = CGAffineTransformMakeTranslation(CGFloat(twoTx),CGFloat(twoTy))
        introTile2.transform = CGAffineTransformRotate(introTile2.transform, CGFloat(Double(twoRotation) * M_PI / 180))
        introTile2.transform = CGAffineTransformScale(introTile2.transform, CGFloat(twoScale), CGFloat(twoScale))
        
        // Tile 3
        
        let threeOffset = Float(scrollView.contentOffset.y)
        
        let threeTx = convertValue(CGFloat(threeOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        let threeTy = convertValue(CGFloat(threeOffset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        
        let threeScale = convertValue(CGFloat(threeOffset), r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        
        let threeRotation = convertValue(CGFloat(threeOffset), r1Min: 0, r1Max: 568, r2Min: 15, r2Max: 0)
        
        introTile3.transform = CGAffineTransformMakeTranslation(CGFloat(threeTx),CGFloat(threeTy))
        introTile3.transform = CGAffineTransformRotate(introTile3.transform, CGFloat(Double(threeRotation) * M_PI / 180))
        introTile3.transform = CGAffineTransformScale(introTile3.transform, CGFloat(threeScale), CGFloat(threeScale))
        
        // Tile 4
        
        let fourOffset = Float(scrollView.contentOffset.y)
        
        let fourTx = convertValue(CGFloat(fourOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        let fourTy = convertValue(CGFloat(fourOffset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        
        let fourScale = convertValue(CGFloat(fourOffset), r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        
        let fourRotation = convertValue(CGFloat(fourOffset), r1Min: 0, r1Max: 568, r2Min: 20, r2Max: 0)
        
        introTile4.transform = CGAffineTransformMakeTranslation(CGFloat(fourTx),CGFloat(fourTy))
        introTile4.transform = CGAffineTransformRotate(introTile4.transform, CGFloat(Double(fourRotation) * M_PI / 180))
        introTile4.transform = CGAffineTransformScale(introTile4.transform, CGFloat(fourScale), CGFloat(fourScale))
        
        // Tile 5
        
        let fiveOffset = Float(scrollView.contentOffset.y)
        
        let fiveTx = convertValue(CGFloat(fiveOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        let fiveTy = convertValue(CGFloat(fiveOffset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        
        let fiveScale = convertValue(CGFloat(fiveOffset), r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        
        let fiveRotation = convertValue(CGFloat(fiveOffset), r1Min: 0, r1Max: 568, r2Min: -5, r2Max: 0)
        
        introTile5.transform = CGAffineTransformMakeTranslation(CGFloat(fiveTx),CGFloat(fiveTy))
        introTile5.transform = CGAffineTransformRotate(introTile5.transform, CGFloat(Double(fiveRotation) * M_PI / 180))
        introTile5.transform = CGAffineTransformScale(introTile5.transform, CGFloat(fiveScale), CGFloat(fiveScale))
        
        // Tile 6
        
        let sixOffset = Float(scrollView.contentOffset.y)
        
        let sixTx = convertValue(CGFloat(sixOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        let sixTy = convertValue(CGFloat(sixOffset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        
        let sixScale = convertValue(CGFloat(sixOffset), r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        
        let sixRotation = convertValue(CGFloat(sixOffset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        introTile6.transform = CGAffineTransformMakeTranslation(CGFloat(sixTx),CGFloat(sixTy))
        introTile6.transform = CGAffineTransformRotate(introTile6.transform, CGFloat(Double(sixRotation) * M_PI / 180))
        introTile6.transform = CGAffineTransformScale(introTile6.transform, CGFloat(sixScale), CGFloat(sixScale))
        
        
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
                                  willDecelerate decelerate: Bool) {
        // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
