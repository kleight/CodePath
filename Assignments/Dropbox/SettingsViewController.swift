//
//  SettingsViewController.swift
//  DropBox Demo
//
//  Created by KLT on 10/14/16.
//  Copyright © 2016 kleight. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var settingsScrollView: UIScrollView!
    override func viewDidLoad() {
        settingsScrollView.contentSize = CGSize(width: 375, height: 1065
        )
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
