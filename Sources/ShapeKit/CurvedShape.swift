//
//  CurvedShape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public struct CurvedShape: Shape {
    
    public var corners: CACornerMask
    public var radius: Int
    
    public init(corners: CACornerMask, radius: Radius) {
        self.corners = corners
        self.radius = radius.rawValue
    }
    
    public func apply(_ view: UIView) {
        setCornerRadius(view)
        setCorner(view)
    }
    
    // MARK: - Private Methods
    private func setCornerRadius(_ view: UIView) {
        view.layer.cornerRadius = CGFloat(radius)
    }
    
    private func setCorner(_ view: UIView) {
        view.layer.maskedCorners = corners
        view.layer.masksToBounds = true
    }
}
