//
//  UILabel+Height.swift
//  TapeWrite
//
//  Created by Fernando Torcelly Garcia on 30/4/16.
//  Copyright © 2016 TapeWrite. All rights reserved.
//

import UIKit

extension UILabel {
    
    // MARK: - Sizes
    
    public func labelWidthDinamically() -> CGFloat {
        let attr : [NSAttributedString.Key: Any] = [NSAttributedString.Key.font : self.font]
        return self.labelWidthDinamically(withAttributes: attr)
    }
    
    public func labelHeightDinamically() -> CGFloat {
        let attr : [NSAttributedString.Key: Any] = [NSAttributedString.Key.font : self.font]
        return self.labelHeightDinamically(withAttributes: attr)
    }
    
    public func labelWidthDinamically(withAttributes attr: [NSAttributedString.Key: Any]?) -> CGFloat {
        let constraint : CGSize = CGSize.init(width: 200000.0, height: self.frame.size.height);
        let context : NSStringDrawingContext = NSStringDrawingContext()
        
        if let string = self.text {
            let boundingBox : CGSize = string.boundingRect(with: constraint, options: .usesLineFragmentOrigin, attributes: attr, context: context).size
            return ceil(boundingBox.width);
        }
        
        return 0
    }
    
    public func labelHeightDinamically(withAttributes attr: [NSAttributedString.Key: Any]?) -> CGFloat {
        let constraint : CGSize = CGSize.init(width: self.frame.size.width, height: 200000.0)
        let context : NSStringDrawingContext = NSStringDrawingContext()
        
        if let string = self.text {
            let boundingBox : CGSize = string.boundingRect(with: constraint, options: .usesLineFragmentOrigin, attributes: attr, context: context).size
            return ceil(boundingBox.height);
        }
        
        return 0
    }
}

