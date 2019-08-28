//
//  UIView+CALayer.swift
//  TorcellyKit
//
//  Created by Fernando Torcelly on 29/7/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import UIKit

extension UIView {
    
    // MARK: - Setter Properties
    
    public func cornerRadius(_ radius: CGFloat) {
        self.layer.masksToBounds = radius != 0
        self.layer.cornerRadius  = radius
    }
    
    public func setBorder(width: CGFloat, color: UIColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    public func setShadow(color: UIColor = UIColor.black, offset: CGSize = CGSize.zero, radius: CGFloat = 0.0, opacity: Float = 0.0) {
        self.layer.shadowColor   = color.cgColor
        self.layer.shadowOffset  = offset
        self.layer.shadowRadius  = radius
        self.layer.shadowOpacity = opacity
    }
    
    public func removeShadow() {
        self.layer.shadowColor   = nil
    }
}
