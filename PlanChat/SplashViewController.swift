//
//  SplashViewController.swift
//  PlanChat
//
//  Created by Kyle Bashour on 8/19/16.
//  Copyright © 2016 Kyle Bashour. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let isLoggedIn = false

        if !isLoggedIn {
            performSegueWithIdentifier(R.segue.splashViewController.logInViewController, sender: self)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
