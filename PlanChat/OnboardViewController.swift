//
//  OnboardViewController.swift
//  PlanChat
//
//  Created by Kyle Bashour on 8/21/16.
//  Copyright © 2016 Kyle Bashour. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit

class OnboardViewController: UIViewController {

    @IBAction func facebookLoginTapped(_ sender: UIButton) {
        FBSDKLoginManager.shared.logIn(withReadPermissions: [], from: self) { [weak self] (result, error) in
            if let error = error {
                print(error.localizedDescription)
                assertionFailure() // add an error message
            } else if let token = FBSDKAccessToken.current()?.tokenString {
                self?.logInToFirebase(withFacebookToken: token)
            }
        }
    }

    func logInToFirebase(withFacebookToken token: String) {
        let credential = FIRFacebookAuthProvider.credential(withAccessToken: token)
        FIRAuth.auth()?.signIn(with: credential) { [weak self] (user, error) in
            if User.isAuthenticated {
                self?.dismiss(animated: true, completion: nil)
            }
        }
    }
}
