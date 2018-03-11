//
//  MainCollectionViewCell.swift
//  Squire Console
//
//  Created by Fernando Torcelly on 28/8/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import UIKit

open class MainCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Initializers
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.build()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Identifier
    
    public class func identifier() -> String {
        return NSStringFromClass(self)
    }
    
    // MARK: - Interface
    
    open func build() {}
}
