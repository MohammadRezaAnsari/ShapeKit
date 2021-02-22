//
//  CustomShape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

struct CustomShape: Shape {
    
    var corners: CACornerMask?
    var radius: Int?
    var topRight: CGFloat
    var topLeft: CGFloat
    var bottomRight: CGFloat
    var bottomLeft: CGFloat
    
    init(topRight: CGFloat, topLeft: CGFloat, bottomRight: CGFloat, bottomLeft: CGFloat) {
        self.topRight = topRight
        self.topLeft = topLeft
        self.bottomRight = bottomRight
        self.bottomLeft = bottomLeft
    }
    
    public func draw(_ view: UIView) {
        setCornerRadius(view)
    }
    
    // MARK: - Private Methods
    private func setCornerRadius(_ view: UIView) {
        
        let maskPath = UIBezierPath(
            rect: view.bounds,
            topLeft: CGSize(width: topLeft, height: topLeft),
            topRight: CGSize(width: topRight, height: topRight),
            bottomLeft: CGSize(width: bottomLeft, height: bottomLeft),
            bottomRight: CGSize(width: bottomRight, height: bottomRight))
        
        let shape = CAShapeLayer()
        shape.path = maskPath.cgPath
        view.layer.mask = shape
    }
}



