//
//  MainViewController.swift
//  Tumblr
//
//  Created by KLT on 11/2/16.
//  Copyright © 2016 kleight. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet var tabButtons: [UIButton]!
    
    @IBOutlet weak var searchBubble: UIImageView!
    
    
    
//View Controllers
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var viewControllers: [UIViewController]!
//Index
    var selectedIndex: Int = 0
    
    


    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//Instantiating View Controllers
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewController(withIdentifier: "homeVC")
        searchViewController = storyboard.instantiateViewController(withIdentifier: "searchVC")
        composeViewController = storyboard.instantiateViewController(withIdentifier: "composeVC")
        accountViewController = storyboard.instantiateViewController(withIdentifier: "accountVC")
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "trendingVC")
        
        viewControllers = [homeViewController, searchViewController, composeViewController, accountViewController, trendingViewController]
        
        
        
        tabButtons[selectedIndex].isSelected = true
        didPressTab(tabButtons[selectedIndex])
        
        
        
//Search Bubble bobs up and down if user is not on Search Tab
        
        UIView.animate(withDuration:0.8, delay: 0.0,
        options: [.autoreverse,.repeat], animations: { () -> Void in
                self.searchBubble.transform = CGAffineTransform(translationX: 0, y: 10)
            }, completion: nil)
        
        
        
        
        
        
        

        // Do any additional setup after loading the view.
    }

    
    @IBAction func didPressTab(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        tabButtons[previousIndex].isSelected = false
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.isSelected = true
        let activeVC = viewControllers[selectedIndex]
        addChildViewController(activeVC)
        
        activeVC.view.frame = containerView.bounds
        containerView.addSubview(activeVC.view)
        activeVC.didMove(toParentViewController: self)
        
        if selectedIndex == 1 {
        searchBubble.isHidden = true}
        
        else {
        searchBubble.isHidden = false}
        
        
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
