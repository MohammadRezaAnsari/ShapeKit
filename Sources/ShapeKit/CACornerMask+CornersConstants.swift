//
//  CACornerMask+CornersConstants.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public extension CACornerMask {
    
    static let none: CACornerMask = []

    /// - User similar names when extending something. like: `layerAllCorners` or `layerMaxYCorners`
    static let all: CACornerMask = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]

    static let top: CACornerMask = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    static let bottom: CACornerMask = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]

    /// - The edge you are looking for should have similar `MaxX` and different `Y`s. This code returns top edge instead
    /// - `MaxX` means the `trailing` edge, not the `left` edge. Use correct naming.
    /// - A simple unit test can prevent these kind of mistakes.
    static let right: CACornerMask = [.layerMinXMinYCorner, .layerMaxXMinYCorner]

    /// - The edge you are looking for should have similar `MaxX` and different `Y`s. This code returns top edge instead
    /// - `MinX` means the `leading` edge, not the `left` edge. Use correct naming.
    /// - A simple unit test can prevent these kind of mistakes.
    static let left: CACornerMask = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]

    static let topRight: CACornerMask = [.layerMaxXMinYCorner]
    static let topLeft: CACornerMask = [.layerMinXMinYCorner]
    static let bottomRight: CACornerMask = [.layerMaxXMaxYCorner]
    static let bottomLeft: CACornerMask = [.layerMinXMaxYCorner]
}
