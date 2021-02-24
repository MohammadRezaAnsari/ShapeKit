//
//  CustomShape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public struct CustomShape: Shape {
        
    var topRight: CGFloat
    var topLeft: CGFloat
    var bottomRight: CGFloat
    var bottomLeft: CGFloat
    
    public init(topRight: Radius = .none, topLeft: Radius = .none, bottomRight: Radius = .none, bottomLeft: Radius = .none) {
        self.topRight = topLeft.rawValue.asCGFloat
        self.topLeft = topLeft.rawValue.asCGFloat
        self.bottomRight = bottomRight.rawValue.asCGFloat
        self.bottomLeft = bottomLeft.rawValue.asCGFloat
    }
    
    public func apply(_ view: UIView) {
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


fileprivate extension BinaryInteger {
    var asCGFloat: CGFloat {
        CGFloat(self)
    }
}
