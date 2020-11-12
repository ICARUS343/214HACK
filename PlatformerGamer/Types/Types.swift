//
//  Types.swift
//  PlatformerGamer
//
//  Created by Grant Yap on 11/12/20.
//  Copyright © 2020 Grant Yap. All rights reserved.
//

import Foundation

struct PhysicsCategory {
    static let Player: UInt32 = 0b1 //1
    static let Block: UInt32 = 0b10 //2
    static let Obstacle: UInt32 = 0b100 //4
    static let Ground: UInt32 = 0b1000  //8
    static let Coin: UInt32 = 0b10000   //16
}
