//
//  LoginViewController.swift
//  Tumblr
//
//  Created by KLT on 11/5/16.
//  Copyright © 2016 kleight. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var fadeTransition: FadeTransition!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var destinationViewController = segue.destination
        
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        fadeTransition = FadeTransition()
        destinationViewController.transitioningDelegate = fadeTransition
        fadeTransition.duration = 1.0
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didTapCancel(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
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
