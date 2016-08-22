//
//  SplashViewController.swift
//  PlanChat
//
//  Created by Kyle Bashour on 8/21/16.
//  Copyright © 2016 Kyle Bashour. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    private let mainViewControllerID = "ShowMainVC"
    private let onboardViewControllerID = "ShowOnboardVC"

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        presentAppropiateViewController()
    }

    func presentAppropiateViewController() {
        if User.isAuthenticated {
            performSegue(withIdentifier: mainViewControllerID, sender: self)
        } else {
            performSegue(withIdentifier: onboardViewControllerID, sender: self)
        }
    }
}
