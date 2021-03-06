//
//  UIView+Circle.swift
//  
//
//  Created by MohammadReza Ansary on 3/6/21.
//

import UIKit

public extension UIView {
    
    /** Apply circle to center of view with minimum diameter. */
    func applyCircle() {
        
        let arcCenter = CGPoint(x: bounds.midX, y: bounds.midY)
        let radius = CGFloat(min(bounds.midX - 1, bounds.midY - 1))
        
        let circlePath = UIBezierPath(
            arcCenter: arcCenter,
            radius: radius,
            startAngle: .zero,
            endAngle: CGFloat(Double.pi * 2),
            clockwise: true
        ).cgPath
        
        let shape = CAShapeLayer()
        shape.path = circlePath
        layer.mask = shape
    }
}
