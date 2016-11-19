//
//  LoginViewController.swift
//  Carousel
//
//  Created by KLT on 10/21/16.
//  Copyright © 2016 kleight. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
  
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginScrollView.delegate = self
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
           
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            
            self.loginScrollView.contentOffset.y = self.loginScrollView.contentInset.bottom
            
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to hide
        }
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func run(after wait: TimeInterval, closure: @escaping () -> Void) {
        let queue = DispatchQueue.main
        queue.asyncAfter(deadline: DispatchTime.now() + wait, execute: closure)
    }
    
    @IBAction func didTapSignIn(_ sender: UIButton)
    {
        self.activityIndicator.startAnimating()
        
        
        if emailField.text!.isEmpty || passwordField.text!.isEmpty
        {
            self.activityIndicator.stopAnimating()
        
            
            let alertController = UIAlertController(title: "Email & Password Required", message: "You left something blank. 🙃", preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default)
            {(action) in
                
            }
            alertController.addAction(OKAction)
            present(alertController, animated: true)
            
        }

        else if emailField.text! == "turner.kleigh@gmail.com" && passwordField.text! == "abc"
        {let secondsToDelay = 2.0
            run(after: secondsToDelay) {
                self.activityIndicator.stopAnimating()
                self.performSegue(withIdentifier: "signInSuccess", sender: nil)
            
                }
        }
        else
        {let secondsToDelay = 2.0
            run(after: secondsToDelay) {
                self.activityIndicator.stopAnimating()
                
                
                let alertController = UIAlertController(title: "Wrong", message: "Email or password is incorrect.", preferredStyle: .alert)
                
                let OKAction = UIAlertAction(title: "OK", style: .default)
                {(action) in
                    
                }
                alertController.addAction(OKAction)
                self.present(alertController, animated: true)
            }

    
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
}
