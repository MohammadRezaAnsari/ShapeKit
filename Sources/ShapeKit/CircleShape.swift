//
//  CircleShape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public struct CircleShape: Shape {
    
    public var corners: CACornerMask = .all
    
    public init() { }
    
    public func apply(_ view: UIView) {
        setCornerRadius(view)
        setCorner(view)
    }
    
    // MARK: - Private Methods
    private func setCornerRadius(_ view: UIView) {
        let height = view.bounds.height
        let width = view.bounds.width
        let maxSize: CGFloat = (height > width ) ? height : width
        let radius = maxSize/2
        view.layer.cornerRadius = CGFloat(radius)
    }
    
    private func setCorner(_ view: UIView) {
        view.layer.maskedCorners = corners
        view.layer.masksToBounds = true
    }
}
