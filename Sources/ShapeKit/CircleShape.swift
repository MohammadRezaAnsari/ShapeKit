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

    /// - Why a shape should *take* a view?
    public func apply(_ view: UIView) {
        setCornerRadius(view)
        setCorner(view)
    }
    
    // MARK: - Private Methods
    private func setCornerRadius(_ view: UIView) {
        let height = view.bounds.height
        let width = view.bounds.width

        /// - Always consist with the formatting. (Look at the space after `width`)
        /// - Isn't this max(height, width) ?
        /// - `Size` is a type with two properties, `with` and `height`. consider using a better name like: largerSide
        /// - Using this condition inside the function cause it to **NOT** be a **pure function**. You should at least bold this in the function's name or its documentation.
        let maxSize: CGFloat = (height > width ) ? height : width

        let radius = maxSize/2
        view.layer.cornerRadius = CGFloat(radius)
    }

    /// - It seems like this functions is setting multiple `corners`. So you should use a plural name for this.
    private func setCorner(_ view: UIView) {
        view.layer.maskedCorners = corners

        /// - Setting the `mask` has some side effects like clipping the `shadow`. Consider that.
        view.layer.masksToBounds = true
    }
}
