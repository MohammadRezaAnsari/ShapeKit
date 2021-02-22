//
//  CurvedShape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

struct CurvedShape: Shape {
    
    var corners: CACornerMask?
    var radius: Int?
    
    public func draw(_ view: UIView) {
        guard corners != nil, radius != nil else { return }
        setCornerRadius(view)
        setCorner(view)
    }
    
    // MARK: - Private Methods
    private func setCornerRadius(_ view: UIView) {
        view.layer.cornerRadius = CGFloat(radius!)
    }
    
    private func setCorner(_ view: UIView) {
        view.layer.maskedCorners = corners!
        view.layer.masksToBounds = true
    }
}
