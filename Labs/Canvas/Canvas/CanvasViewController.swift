//
//  CanvasViewController.swift
//  Canvas
//
//  Created by KLT on 10/27/16.
//  Copyright © 2016 kleight. All rights reserved.
//

import UIKit

class CanvasViewController: UIViewController {
    
    @IBOutlet weak var trayView: UIView!
    
    var trayOriginalCenter: CGPoint!
    var trayDownOffset: CGFloat!
    var trayUp: CGPoint!
    var trayDown: CGPoint!

    
    var newlyCreatedFace: UIView!
    var newlyCreatedFaceOriginalCenter: CGPoint!
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trayDownOffset = 190
        trayUp = trayView.center
        trayDown = CGPoint(x: trayView.center.x, y: trayView.center.y + trayDownOffset)
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPanTray(_ sender: UIPanGestureRecognizer) {
        
        var velocity = sender.velocity(in: view)
        
        let translation = sender.translation(in: view)
        
        if sender.state == .began {
            
            trayOriginalCenter = trayView.center
            
          
            
        }
        else if sender.state == .changed {
            
            trayView.center = CGPoint(x: trayOriginalCenter.x, y: trayOriginalCenter.y + translation.y)
            
            
            
            if sender.location(in: view).y < 300 {
                
        
                
                trayView.center = CGPoint(x: trayOriginalCenter.x, y: trayOriginalCenter.y + (translation.y/5))
                
             
    
                print(trayView.center.y)
            }
            
        }
            
        else if sender.state == .ended {
            
            
            
            if velocity.y < 0 {
                
                UIView.animate(withDuration:0.4, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options:[] ,
                               animations: { () -> Void in
                                self.trayView.center = self.trayUp
                    }, completion: nil)
                
                
                
            }
            else {
                
                UIView.animate(withDuration:0.4, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options:[] ,
                               animations: { () -> Void in
                                self.trayView.center = self.trayDown
                    }, completion: nil)}
    }
    }
    
    @IBAction func didPanFace(_ sender: UIPanGestureRecognizer) {
        
        var imageView = sender.view as! UIImageView
        
        let translation = sender.translation(in: view)
       
        
        if sender.state == .began {
           
            newlyCreatedFace = UIImageView(image: imageView.image)
            newlyCreatedFaceOriginalCenter = newlyCreatedFace.center
        
            
            view.addSubview(newlyCreatedFace)
            newlyCreatedFace.center = imageView.center
            newlyCreatedFace.center.y += trayView.frame.origin.y
        }
        else if sender.state == .changed {
            
            newlyCreatedFace.center = CGPoint(x: newlyCreatedFaceOriginalCenter.x + translation.x, y: newlyCreatedFaceOriginalCenter.y + translation.y)
        }
            
        else if sender.state == .ended {
        }
        
        
        
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


