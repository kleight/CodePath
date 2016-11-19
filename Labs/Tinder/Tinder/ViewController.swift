//
//  ViewController.swift
//  Tinder
//
//  Created by KLT on 11/8/16.
//  Copyright © 2016 kleight. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var originalPhotoCenter: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didSwipeImage(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)
        let photo = sender.view!
    
       
        
        
        if sender.state == .began {
            
            originalPhotoCenter = photo.center
            
        
        
        }
        if sender.state == .changed {
            
            //image moves & rotates with sender
            
            photo.center.x = originalPhotoCenter.x + translation.x
            
            let rotationAngle = translation.x / 5 * CGFloat(M_PI / 180)
            photo.transform = CGAffineTransform(rotationAngle: rotationAngle)
        }
        if sender.state == .ended {
            
            if translation.x < 100 && translation.x > -100{
            
                // return to original position
                UIView.animate(withDuration: 0.3, animations: {
                    photo.center = self.originalPhotoCenter
                    photo.transform = CGAffineTransform.identity

                })
                                }
               
            
            }
            
            else if translation.x <= 100{
                // image goes right
                 photo.center.x = view.frame.origin.x - view.frame.width - photo.frame.width
                
            }
                
            else { // return to original position
                 photo.center.x = view.frame.origin.x - photo.frame.width
                
            }

    }

}

