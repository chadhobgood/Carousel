//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Hobgood, Chad on 4/10/16.
//  Copyright © 2016 Hobgood, Chad. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var settingsImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scrollView.contentSize = settingsImage.image!.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBackButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func didPressSignOutButton(sender: AnyObject) {
        let alertController = UIAlertController(title: "Title", message: "Are you sure you want to Sign Out?", preferredStyle: .ActionSheet)
        let logoutAction = UIAlertAction(title: "Sign Out", style: .Destructive) { (action) in
            // handle case of user logging out
            
            // Take user back to intro screen
            self.performSegueWithIdentifier("signOutSegue", sender: self)
        }
        // add the logout action to the alert controller
        alertController.addAction(logoutAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // handle case of user canceling. Doing nothing will dismiss the view.
        }
        // add the cancel action to the alert controller
        alertController.addAction(cancelAction)
        
        presentViewController(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }

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
