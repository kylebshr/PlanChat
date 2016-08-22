//
//  User.swift
//  PlanChat
//
//  Created by Kyle Bashour on 8/21/16.
//  Copyright © 2016 Kyle Bashour. All rights reserved.
//

import Foundation
import Firebase

class User {

    private static let auth: FIRAuth = {
        guard let auth = FIRAuth.auth() else {
            fatalError("Firebase Auth seems messed up")
        }
        return auth
    }()

    static func logout() {
        try! auth.signOut()
    }

    static var isAuthenticated: Bool {
        return auth.currentUser != nil
    }
}
