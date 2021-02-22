//
//  CircleShape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

struct CircleShape: Shape {
    
    var corners: CACornerMask? = ShapeCornersEnum.master(.all).cornerMask
    var radius: Int? = 0
    
    public func draw(_ view: UIView) {
        guard corners != nil, radius != nil else { return }
        setCornerRadius(view)
        setCorner(view)
    }
    
    
    // MARK: - Private Methods
    private func setCornerRadius(_ view: UIView) {
        let height = view.bounds.height
        let width = view.bounds.width
        let size: CGFloat = (height > width ) ? height : width
        view.layer.cornerRadius = CGFloat(size/2)
    }
    
    private func setCorner(_ view: UIView) {
        view.layer.maskedCorners = corners!
        view.layer.masksToBounds = true
    }
}
