//
//  RoudableButton.swift
//  TorcellyKit
//
//  Created by Fernando Torcelly on 16/10/2018.
//  Copyright © 2018 Fernando Torcelly. All rights reserved.
//

import UIKit

open class RoundableButton: UIButton {
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2
        let roundPath = UIBezierPath.init(roundedRect: bounds, cornerRadius: bounds.height / 2)
        let maskLayer = CAShapeLayer()
        maskLayer.path = roundPath.cgPath
        layer.mask = maskLayer
    }
    
}
