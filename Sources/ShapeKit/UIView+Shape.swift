//
//  UIView+Shape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public extension UIView {
    
    func applyShape(_ shape: Shape) {
        
        let maskPath = UIBezierPath(
            rect: bounds,
            topLeft: CGFloat(shape.topLeadingRadius),
            topRight: CGFloat(shape.topTrailingRadius),
            bottomLeft: CGFloat(shape.bottomLeadingRadius),
            bottomRight: CGFloat(shape.bottomTrailingRadius)
        ).cgPath
        
        let shape = CAShapeLayer()
        shape.path = maskPath
        layer.mask = shape
    }
}
