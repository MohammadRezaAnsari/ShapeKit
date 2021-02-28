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

    /// - Try to break the signature into multiple lines for better readability. (It is mentioned in the conventions)
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

    /// - Seems like you are setting both radius and corners at the same time. Is this visible in the function name? If you think so, what about the other structs?
    private func setCornerRadius(_ view: UIView) {

        /// - Just to be mentioned, try not initializing too much temp variables. Using temp variables is for increasing the readability of the code, not the length of it! So try using them when you want to prevent unreadable chaining.
        let maskPath = UIBezierPath(
            rect: view.bounds,
            topLeft: CGSize(width: topLeft, height: topLeft),
            topRight: CGSize(width: topRight, height: topRight),
            bottomLeft: CGSize(width: bottomLeft, height: bottomLeft),
            bottomRight: CGSize(width: bottomRight, height: bottomRight))
        
        let shape = CAShapeLayer()

        /// - Chaining a data type is not that unreadable.
        shape.path = maskPath.cgPath
        view.layer.mask = shape
    }
}


fileprivate extension BinaryInteger {

    /// - Use the accepted naming convention! This should be `cgFloat`.
    var asCGFloat: CGFloat {
        CGFloat(self)
    }
}
