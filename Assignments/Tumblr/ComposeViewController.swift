//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by KLT on 11/2/16.
//  Copyright © 2016 kleight. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    //Compose Button Icons
    @IBOutlet weak var textIcon: UIButton!
    @IBOutlet weak var photoIcon: UIButton!
    @IBOutlet weak var quoteIcon: UIButton!
    @IBOutlet weak var linkIcon: UIButton!
    @IBOutlet weak var chatIcon: UIButton!
    @IBOutlet weak var videoIcon: UIButton!
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        textIcon.center.y = 700
        photoIcon.center.y = 700
        quoteIcon.center.y = 700
        linkIcon.center.y = 700
        chatIcon.center.y = 700
        videoIcon.center.y = 700
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration:1, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.textIcon.center.y = 190
            }, completion: nil)
        
        UIView.animate(withDuration:1, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.photoIcon.center.y = 190
            }, completion: nil)
        
        UIView.animate(withDuration:1, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.quoteIcon.center.y = 190
            }, completion: nil)
        
        
        UIView.animate(withDuration:1, delay: 0.3, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.linkIcon.center.y = 310
            }, completion: nil)
        
        UIView.animate(withDuration:1, delay: 0.3, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.videoIcon.center.y = 310
            }, completion: nil)
        
        UIView.animate(withDuration:1, delay: 0.4, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.chatIcon.center.y = 310
            }, completion: nil)
    }
    
    
    
    override func viewWillDisappear(_ animated: Bool) { super.viewDidLoad()
        
        UIView.animate(withDuration:1, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.textIcon.center.y = -100
            }, completion: nil)
        
        UIView.animate(withDuration:1, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.photoIcon.center.y = -100
            }, completion: nil)
        
        UIView.animate(withDuration:1, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.quoteIcon.center.y = -100
            }, completion: nil)
        
        
        UIView.animate(withDuration:1, delay: 0.3, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.linkIcon.center.y = -100
            }, completion: nil)
        
        UIView.animate(withDuration:1, delay: 0.3, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.videoIcon.center.y = -100
            }, completion: nil)
        
        UIView.animate(withDuration:1, delay: 0.4, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.chatIcon.center.y = -100
            }, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapNevermind(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
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
