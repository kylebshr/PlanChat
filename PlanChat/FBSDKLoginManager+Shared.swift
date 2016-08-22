//
//  FBSDKLoginManager+Shared.swift
//  PlanChat
//
//  Created by Kyle Bashour on 8/22/16.
//  Copyright © 2016 Kyle Bashour. All rights reserved.
//

import FBSDKLoginKit

fileprivate let manager = FBSDKLoginManager()

extension FBSDKLoginManager {
    static var shared: FBSDKLoginManager {
        return manager
    }
}
