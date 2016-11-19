//
//  SearchViewController.swift
//  Tumblr
//
//  Created by KLT on 11/2/16.
//  Copyright © 2016 kleight. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    
    @IBOutlet weak var searchFeed: UIImageView!
    @IBOutlet weak var loadingImage: UIImageView!
    let loading1 = #imageLiteral(resourceName: "loading-1")
    let loading2 = #imageLiteral(resourceName: "loading-2")
    let loading3 = #imageLiteral(resourceName: "loading-3")
    
    var loadingImages: [UIImage]!
    var animatedImage: UIImage!
    
    



    override func viewDidLoad() {
        super.viewDidLoad()
        loadingImages = [loading1, loading2, loading3]
         animatedImage = UIImage.animatedImage(with: loadingImages, duration: 1.0)

      
        // Do any additional setup after loading the view.
    }
    
    // Hides the search feed image. Shows animated loading image.
    override func viewWillAppear(_ animated: Bool) {
        searchFeed.isHidden = true
        loadingImage.isHidden = false
    
        loadingImage!.image = animatedImage
        
        
    }
    
    func run(after wait: TimeInterval, closure: @escaping () -> Void) {
        let queue = DispatchQueue.main
        queue.asyncAfter(deadline: DispatchTime.now() + wait, execute: closure)}
    
    override func viewDidAppear(_ animated: Bool) {
        let secondsToDelay = 2.0
        run(after: secondsToDelay) {
            self.searchFeed.isHidden = false
            self.loadingImage.isHidden = true
            
        }
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
