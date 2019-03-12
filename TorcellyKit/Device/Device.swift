//
//  Device.swift
//  TorcellyKit
//
//  Created by Fernando Torcelly on 08/10/2018.
//  Copyright © 2018 Fernando Torcelly. All rights reserved.
//

import UIKit

// https://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions
public enum DeviceSizeType: Int {
    case unknown = -1
    case iPhone65p      // iPhone Xs Max
    case iPhone61p      // iPhone XR
    case iPhone58p      // iPhone X, Xs
    case iPhone55p      // iPhone 6+, 6s+, 7+, 8+
    case iPhone47p      // iPhone 6, 6s, 7, 8
    case iPhone4p       // iPhone 5, 5s, 5c, SE
    case iPhone35p      // iPhone 4, 4s, 2G, 3G, 3GS
    case iPad97p        // iPad 5th gen, 6th gen, Air, Air 2, Pro 9.7"
    case iPad105p       // iPad Pro 10.5″
    case iPad11p        // iPad Pro 11″
    case iPad129p       // iPad Pro 12.9″
}
public enum DeviceType: String {
    case unknown        = "Unknown"
    case iPad5th        = "iPad (5th generation)"
    case iPad6th        = "iPad (6th generation)"
    case iPadAir        = "iPad Air"
    case iPadAir2       = "iPad Air 2"
    case iPadPro97      = "iPad Pro (9.7-inch)"
    case iPadPro105     = "iPad Pro (10.5-inch)"
    case iPadPro11      = "iPad Pro (11-inch)"
    case iPadPro129     = "iPad Pro (12.9-inch)"
    case iPadPro129_2th = "iPad Pro (12.9-inch) (2nd generation)"
    case iPhone5s       = "iPhone 5s"
    case iPhone6        = "iPhone 6"
    case iPhone6Plus    = "iPhone 6 Plus"
    case iPhone6s       = "iPhone 6s"
    case iPhone6sPlus   = "iPhone 6s Plus"
    case iPhone7        = "iPhone 7"
    case iPhone7Plus    = "iPhone 7 Plus"
    case iPhone7s       = "iPhone 7s"
    case iPhone7sPlus   = "iPhone 7s Plus"
    case iPhone8        = "iPhone 8"
    case iPhone8Plus    = "iPhone 8 Plus"
    case iPhoneSE       = "iPhone SE"
    case iPhoneX        = "iPhone X"
    case iPhoneXR       = "iPhone XR"
    case iPhoneXS       = "iPhone XS"
    case iPhoneXSMax    = "iPhone XS Max"

}

public struct Device {
    
    private static let screenSizes: [CGSize] = [CGSize.init(width: 414, height: 896),  // iPhone Xs Max
                                                CGSize.init(width: 414, height: 896),   // iPhone XR
                                                CGSize.init(width: 375, height: 812),   // iPhone X, Xs
                                                CGSize.init(width: 414, height: 736),   // iPhone 6+, 6s+, 7+, 8+
                                                CGSize.init(width: 375, height: 667),   // iPhone 6, 6s, 7, 8
                                                CGSize.init(width: 320, height: 568),   // iPhone 5, 5s, 5c, SE
                                                CGSize.init(width: 320, height: 480),   // iPhone 4, 4s, 2G, 3G, 3GS
                                                CGSize.init(width: 1024, height: 768),  // iPad 5th gen, 6th gen, Air, Air 2, Pro 9.7"
                                                CGSize.init(width: 1112, height: 834),  // iPad Pro 10.5″
                                                CGSize.init(width: 1194, height: 834),  // iPad Pro 11″
                                                CGSize.init(width: 1366, height: 1024)  // iPad Pro 12.9″
                                                ]
    
    private static let names: [String] = ["iPad (5th generation)",
                                          "iPad (6th generation)",
                                          "iPad Air",
                                          "iPad Air 2",
                                          "iPad Pro (9.7-inch)",
                                          "iPad Pro (10.5-inch)",
                                          "iPad Pro (11-inch)",
                                          "iPad Pro (12.9-inch)",
                                          "iPad Pro (12.9-inch) (2nd generation)",
                                          "iPhone 5s",
                                          "iPhone 6",
                                          "iPhone 6 Plus",
                                          "iPhone 6s",
                                          "iPhone 6s Plus",
                                          "iPhone 7",
                                          "iPhone 7 Plus",
                                          "iPhone 7s",
                                          "iPhone 7s Plus",
                                          "iPhone 8",
                                          "iPhone 8 Plus",
                                          "iPhone SE",
                                          "iPhone X",
                                          "iPhone XR",
                                          "iPhone XS",
                                          "iPhone XS Max"
                                          ]
    
    public static func deviceType() -> DeviceType {
        let deviceType = DeviceType.init(rawValue: UIDevice.current.name)
        return deviceType ?? .unknown
    }
    
    public static func deviceSizeType() -> DeviceSizeType {
        let index = Device.deviceSizeIndex()
        let type  = DeviceSizeType.init(rawValue: index)
        return type ?? .unknown
    }
    
    private static func deviceSizeIndex() -> Int {
        let currentScreenSize = UIScreen.main.bounds.size
        let inverseCurrentScreenSize = CGSize.init(width: UIScreen.main.bounds.height, height: UIScreen.main.bounds.width)
        var index = Device.screenSizes.index(of: currentScreenSize)
        if index == nil {
            index = Device.screenSizes.index(of: inverseCurrentScreenSize)
        }
        if index == 0 && Device.deviceType() == .iPhoneXR {
            return 1
        }
        return index ?? -1
    }
    
    //MARK: - Evaluate Size Values
    
    public static func evaluateSize(values: [CGSize]) -> CGSize {
        if values.count != screenSizes.count {
            let message = "Could not evaluate values with this input size (\(values.count). It must be \(screenSizes.count)"
            fatalError(message)
        }
        
        let index = Device.deviceSizeIndex() + 1
        return values[index]
    }
}
