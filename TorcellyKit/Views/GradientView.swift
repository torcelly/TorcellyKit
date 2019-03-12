//
//  GradientView.swift
//  Squire Console
//
//  Created by Fernando Torcelly on 20/8/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import UIKit

public class GradientView: UIView {
    
    // MARK: - CALayer
    
    private let gradientLayer = CAGradientLayer()
    
    // MARK: - Init
    
    public convenience init(colors: [UIColor]) {
        self.init(frame: CGRect.zero)
        gradientLayer.colors = colors.map({ (color) -> CGColor in
            return color.cgColor
        })
        self.layer.addSublayer(gradientLayer)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = CGRect.init(x: 0, y: 0, width: self.layer.frame.width, height: self.layer.frame.height)
    }
}
