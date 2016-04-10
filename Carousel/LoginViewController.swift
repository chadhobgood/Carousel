//
//  LoginViewController.swift
//  Carousel
//
//  Created by Hobgood, Chad on 4/9/16.
//  Copyright © 2016 Hobgood, Chad. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginNavBar: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var signInButton: UIButton!
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scrollView.delegate = self
        
        scrollView.contentSize = scrollView.frame.size
        scrollView.contentInset.bottom = 100
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillShow(_:)), name:UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillHide(_:)), name:UIKeyboardWillHideNotification, object: nil)
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        delay(0.5){
            // Give the email text field focus - automatically open the keyboard
            self.emailTextField.becomeFirstResponder()
        }
        
        
    }
    
    // The main view is about to appear...
    override func viewWillAppear(animated: Bool) {
        // Set initial transform values 20% of original size
        let transform = CGAffineTransformMakeScale(0.2, 0.2)
        // Apply the transform properties of the views
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        // Set the alpha properties of the views to transparent
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
    }
    
    // The main view appeared...
    override func viewDidAppear(animated: Bool) {
        //Animate the code within over 0.3 seconds...
        UIView.animateWithDuration(0.3) { () -> Void in
            // Return the views transform properties to their default states.
            self.fieldParentView.transform = CGAffineTransformIdentity
            self.loginNavBar.transform = CGAffineTransformIdentity
            // Set the alpha properties of the views to fully opaque
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        // Move the button up above keyboard
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        
        // Scroll the scrollview up
        scrollView.contentOffset.y = scrollView.contentInset.bottom
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        // Move the buttons back down to it's original position
        buttonParentView.frame.origin.y = buttonInitialY
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // If the scrollView has been scrolled down by 50px or more...
        if scrollView.contentOffset.y <= -50 {
            // Hide the keyboard
            view.endEditing(true)
        }
    }
    
    @IBAction func didPressSignIn(sender: AnyObject) {
        // Start animating the indicator
        activityIndicator.startAnimating()
        
        // Disable the button to prevent more clicks
        signInButton.enabled = false;
        
        delay(2) {
            self.activityIndicator.stopAnimating()
            self.signInButton.enabled = true;
            self.login()
        }
    }
    
    
    func login() {
        if (emailTextField.text == "test" && passwordTextField.text == "test") {
            self.performSegueWithIdentifier("tutorialSegue", sender: self)
        } else if (emailTextField.text!.isEmpty){
            let alert = UIAlertController(title: "Email Required", message: "Please enter your email address.", preferredStyle: .Alert)
            
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: { (UIAlertAction) in })
            
            alert.addAction(okAction)
            
            presentViewController(alert, animated: true, completion: {})
        } else if (passwordTextField.text!.isEmpty){
            let alert = UIAlertController(title: "Password Required", message: "Please enter your password.", preferredStyle: .Alert)
            
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: { (UIAlertAction) in })
            
            alert.addAction(okAction)
            
            presentViewController(alert, animated: true, completion: {})
        } else {
            let alert = UIAlertController(title: "Invalid Email or Passowrd", message: "Please enter a valid Email and Password.", preferredStyle: .Alert)
            
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: { (UIAlertAction) in })
            
            alert.addAction(okAction)
            
            presentViewController(alert, animated: true, completion: {})
        
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
