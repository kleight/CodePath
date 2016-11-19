//
//  PhotoViewController.swift
//  Facebook
//
//  Created by KLT on 11/12/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var photo: UIImage!
    
    @IBOutlet weak var photoContainer: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        photoContainer.image = photo
        
        photoContainer.frame.size = photo.size
        
      
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapDone(_ sender: UIButton) {
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
