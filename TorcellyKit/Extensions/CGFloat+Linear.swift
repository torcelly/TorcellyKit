//
//  CGFloat+Linear.swift
//  TorcellyKit
//
//  Created by Fernando Torcelly Garcia on 01/02/2019.
//  Copyright © 2019 Fernando Torcelly. All rights reserved.
//

import Foundation

extension CGFloat {
    
    // MARK: - Private Tools
    
    static public func linearValues(valueZero: CGFloat, valueOne: CGFloat) -> (CGFloat, CGFloat) {
        if valueOne - valueZero == 0 {
            return (0, 0)
        }
        let m = 1 / (valueOne - valueZero)
        let n = -(m * valueZero)
        return (m, n)
    }
    
}
