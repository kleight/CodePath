//
//  InboxViewController.swift
//  Mailbox
//
//  Created by KLT on 10/25/16.
//  Copyright © 2016 kleight. All rights reserved.
//

import UIKit

class InboxViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var messageImageView: UIImageView!
    var messageOriginalCenter: CGPoint!
   
    @IBOutlet weak var iconView: UIView!
    @IBOutlet weak var archiveIcon: UIImageView!
    @IBOutlet weak var deleteIcon: UIImageView!
    
    @IBOutlet weak var laterIcon: UIImageView!
    @IBOutlet weak var listIcon: UIImageView!
    
    @IBOutlet weak var iconView2: UIView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scrollView.contentSize = parentView.frame.size
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPanMessage(_ sender: UIPanGestureRecognizer) {
       
        
        let translation = sender.translation(in: self.messageView)
        
        let messageCenter = messageImageView.center.x
        
        
            if sender.state == .began
            {
                messageOriginalCenter = messageImageView.center
                messageView.backgroundColor = UIColor.lightGray
                
                
            } else if sender.state == .changed
            {
                
               
               
                messageImageView.center = CGPoint(x: messageOriginalCenter.x + translation.x, y: messageOriginalCenter.y)
                
                iconView.center.x = messageImageView.center.x - 40
                iconView2.center.x = messageImageView.center.x + 40
                
            
                if messageCenter > 160 && messageCenter < 220
                {self.messageView.backgroundColor = UIColor.lightGray
                    laterIcon.alpha = 1
                    listIcon.alpha = 0
                }

                else if messageCenter >= 220 &&
                    messageCenter < 260
                {self.messageView.backgroundColor = UIColor.green
                    deleteIcon.alpha = 0
                    archiveIcon.alpha = 1
                    
                }
                else if messageCenter >= 300 {
                    self.messageView.backgroundColor = UIColor.red
                    archiveIcon.alpha = 0
                    deleteIcon.alpha = 1
                
                    }
                else if messageCenter <= 160 && messageCenter > 120 {
                    self.messageView.backgroundColor = UIColor.lightGray
                    
                    deleteIcon.alpha = 0
                    archiveIcon.alpha = 0.5
                }
                else if messageCenter <= 120 && messageCenter > 60 {
                    self.messageView.backgroundColor = UIColor.yellow
                    
                    laterIcon.alpha = 1
                    listIcon.alpha = 0
                }
                else if messageCenter <= 20 {
                    self.messageView.backgroundColor = UIColor.orange
                    
                    listIcon.alpha = 1
                    laterIcon.alpha = 0
                }

                    
                    
            else if sender.state == .ended {
                
                    if messageCenter > 160 && messageCenter < 220 {
                        
                        messageImageView.center.x = messageOriginalCenter.x
                      
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

}
}
