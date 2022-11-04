//
//  CGFloat+Ext.swift
//  Ninja
//
//  Created by MacBook Air on 16.08.2022.
//

import CoreGraphics

public let π = CGFloat.pi

extension CGFloat {
    func radiansToDegrees() -> CGFloat {
        return self * 180.0 / π
    }
    
    func degreesToRadians() -> CGFloat {
        return self * π / 180.0
    }
    
    static func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(0xFFFFFFFF))
    }
    static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        assert(min < max)
        return CGFloat.random() * (max - min) + min
    }
}
