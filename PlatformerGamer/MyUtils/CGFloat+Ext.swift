//
//  CGFloat+Ext.swift
//  PlatformerGamer
//
//  Created by Grant Yap on 11/12/20.
//  Copyright © 2020 Grant Yap. All rights reserved.
//

import CoreGraphics

public let pie = CGFloat.pi

extension CGFloat{
    
    func radiansToDegrees() -> CGFloat{
        return self * 180.0 / pie
    }
    
    func degreesToRadians() -> CGFloat {
        return self * pie / 180.0
    }
    
    static func random() -> CGFloat{
        return CGFloat(Float(arc4random()) / Float(0xFFFFFFFF))
    }
    
    static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        assert(min < max)
        return CGFloat.random() * (max-min) + min // return max or min
    }
}


