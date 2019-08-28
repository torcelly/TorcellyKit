//
//  UIImage+Colors.swift
//  TorcellyKit
//
//  Created by Fernando Torcelly on 16/10/2018.
//  Copyright © 2018 Fernando Torcelly. All rights reserved.
//

import Foundation

extension UIImage {
    
    static public func from(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img!
    }
    
}
