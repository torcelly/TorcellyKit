//
//  CoreGraphics+Geometry.swift
//  TorcellyKit
//
//  Created by Fernando Torcelly on 18/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import CoreGraphics

public func degreesToRadians(degrees: CGFloat) -> CGFloat {
    return degrees * CGFloat(Double.pi) / 180
}

public func radiansToDegress(radians: CGFloat) -> CGFloat {
    return radians * 180 / CGFloat(Double.pi)
}
