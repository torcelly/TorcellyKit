//
//  MainTableViewCell.swift
//  Backstage
//
//  Created by Fernando Torcelly on 14/8/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import UIKit

open class MainTableViewCell: UITableViewCell {
    
    // MARK: - Initializers
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: MainTableViewCell.identifier())
        self.build()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Identifier
    
    public class func identifier() -> String {
        return NSStringFromClass(self)
    }
    
    // MARK: - Interface
    
    open func build() {}
}
