//
//  UIColor + Gradient.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/22/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import Foundation
import UIKit

struct Colors {
    
    static let BLUSH : (top: UIColor, btm: UIColor) = (UIColor(red:0.70, green:0.27, blue:0.57, alpha:1.0),
                                                       UIColor(red:0.95, green:0.37, blue:0.47, alpha:1.0))
    static let SCOOTER : (top: UIColor, btm: UIColor) = (UIColor(red:0.21, green:0.82, blue:0.86, alpha:1.0),
                                                         UIColor(red:0.36, green:0.53, blue:0.90, alpha:1.0))

    static let COCOA_ICE : (top: UIColor, btm: UIColor) = (UIColor(red:0.75, green:0.75, blue:0.67, alpha:1.0),
                                                           UIColor(red:0.11, green:0.94, blue:1.00, alpha:1.0))
    
}

struct Gradient {
    
    var gl: CAGradientLayer!
    
    init(top: UIColor, btm: UIColor) {
        let colorTop = top.cgColor
        let colorBottom = btm.cgColor
        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 1.0]
    }
    
}

extension UIView {
    func applyGradient(with gradient: Gradient) -> Void {
        self.applyGradient(gradient)
    }
    
    private func applyGradient(_ gradient: Gradient) -> Void {
        gradient.gl.frame = self.bounds
        gradient.gl.masksToBounds = true
        self.layer.insertSublayer(gradient.gl, at: 0)
    }
    
    func removeGradient() -> Void {
        self.layer.sublayers!.remove(at: 0)
        self.backgroundColor = .clear
    }
    
}
