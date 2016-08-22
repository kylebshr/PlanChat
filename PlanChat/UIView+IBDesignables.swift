//
//  UIView+IBDesignables.swift
//  PlanChat
//
//  Created by Kyle Bashour on 8/21/16.
//  Copyright © 2016 Kyle Bashour. All rights reserved.
//

import UIKit

@IBDesignable extension UIView {

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
