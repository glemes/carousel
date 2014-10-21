//
//  loginViewController.swift
//  carousel
//
//  Created by Giovana Lemes on 10/20/14.
//  Copyright (c) 2014 Giovana Lemes. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var inputsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing (true)
    }
    @IBAction func onEmailEditing(sender: AnyObject) {
      
    }
    @IBAction func onPasswordEditing(sender: AnyObject) {
       
    }
    @IBAction func signIn(sender: AnyObject) {
        

        activityIndicator.startAnimating()
        // Delay for 2 seconds, then run the code between the braces.
        delay(2) {
            self.activityIndicator.stopAnimating()
            if self.emailField.text == "giovana@email.com" && self.passwordField.text == "swift" {
                self.performSegueWithIdentifier("loginSegue", sender: self)
            } else {
                var alertView = UIAlertView(title: "Incorrect Email or Password", message: "", delegate: nil, cancelButtonTitle: "ok")
                alertView.show()
            }
        }
    }
    
}



