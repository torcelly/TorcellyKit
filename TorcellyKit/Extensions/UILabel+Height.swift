//
//  UILabel+Height.swift
//  TorcellyKit
//
//  Created by Fernando Torcelly Garcia on 30/4/16.
//  Copyright © 2016 Fernando Torcelly. All rights reserved.
//

import UIKit

extension UILabel {
    
    // MARK: - Sizes
    
    public func labelWidthDinamically() -> CGFloat {
        let attr : [NSAttributedString.Key: Any] = [NSAttributedString.Key.font : self.font]
        return self.labelWidthDinamically(string: self.text ?? "", attributes: attr)
    }
    
    public func labelHeightDinamically() -> CGFloat {
        let attr : [NSAttributedString.Key: Any] = [NSAttributedString.Key.font : self.font]
        return self.labelHeightDinamically(string: self.text ?? "", attributes: attr)
    }
    
    public func labelWidthDinamically(string: String, attributes attr: [NSAttributedString.Key: Any]?) -> CGFloat {
        let constraint : CGSize = CGSize.init(width: 200000.0, height: self.frame.size.height);
        let context : NSStringDrawingContext = NSStringDrawingContext()
        
        let boundingBox : CGSize = string.boundingRect(with: constraint, options: .usesLineFragmentOrigin, attributes: attr, context: context).size
        // let boundingBox : CGSize = self.sizeThatFits(self.frame.size)
        return ceil(boundingBox.width);
    }
    
    public func labelHeightDinamically(string: String, attributes attr: [NSAttributedString.Key: Any]?) -> CGFloat {
        let attrStr = NSAttributedString.init(string: string, attributes: attr)
        let constraint : CGSize = CGSize.init(width: self.frame.size.width, height: CGFloat.greatestFiniteMagnitude)
        let context : NSStringDrawingContext = NSStringDrawingContext()
        let boundingBox = attrStr.boundingRect(with: constraint, options: [.usesLineFragmentOrigin, .usesFontLeading], context: context).size
        print(boundingBox)
        print(self.sizeThatFits(constraint))
        print(attrStr.boundingRect(with: CGSize.init(width: 350, height: 20.0), options: [.usesLineFragmentOrigin, .usesFontLeading], context: context).size)
        //let boundingBox : CGSize = string.boundingRect(with: constraint, options: .usesLineFragmentOrigin, attributes: attr, context: context).size
        //let boundingBox : CGSize = self.sizeThatFits(self.frame.size)
        return ceil(boundingBox.height);
    }
}

