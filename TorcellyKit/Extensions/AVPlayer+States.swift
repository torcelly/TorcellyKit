//
//  AVPlayer+States.swift
//  TorcellyKit
//
//  Created by Fernando Torcelly on 16/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import AVFoundation

extension AVPlayer {
    open var isPlaying: Bool {
        return rate != 0 && error == nil
    }
}
