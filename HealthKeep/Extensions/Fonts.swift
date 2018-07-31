//
//  Fonts.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/26/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import Foundation
import UIKit

fileprivate let size : CGFloat = 16.0
fileprivate let smallFont : CGFloat = 12.0

struct SFCompact {
    
    static var _light = UIFont(name: "SFCompactDisplay-Light", size: size)
    static var _regular = UIFont(name: "SFCompactDisplay-Regular", size: size)
    static var _thin = UIFont(name: "SFCompactDisplay-Thin", size: size)
    static var _ultralight = UIFont(name: "SFCompactDisplay-Ultralight", size: size)
    static var _medium = UIFont(name: "SFCompactDisplay-Medium", size: size)
    static var _semibold = UIFont(name: "SFCompactDisplay-Semibold", size: size)
    
    static var _lightSmall = UIFont(name: "SFCompactDisplay-Light", size: smallFont)
    
}
