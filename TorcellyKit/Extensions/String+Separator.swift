//
//  String+Separator.swift
//  TorcellyKit
//
//  Created by Fernando Torcelly Garcia on 20/06/2019.
//  Copyright © 2019 Fernando Torcelly. All rights reserved.
//

import Foundation

extension Collection {
    var pairs: [SubSequence] {
        var startIndex = self.startIndex
        let count = self.count
        let n = count/2 + count % 2
        return (0..<n).map { _ in
            let endIndex = index(startIndex, offsetBy: 2, limitedBy: self.endIndex) ?? self.endIndex
            defer { startIndex = endIndex }
            return self[startIndex..<endIndex]
        }
    }
}

extension StringProtocol where Self: RangeReplaceableCollection {
    mutating func insert(separator: Self, every n: Int) {
        for index in indices.reversed() where index != startIndex &&
            distance(from: startIndex, to: index) % n == 0 {
                insert(contentsOf: separator, at: index)
        }
    }
    
    public func inserting(separator: Self, every n: Int) -> Self {
        var string = self
        string.insert(separator: separator, every: n)
        return string
    }
}
