//
//  CACornerMask+CornersConstants.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

/* Extra bit definitions for `maskedCorners' property. */
public extension CACornerMask {
    
    /// Returns top corners.
    static let layerMinYCorners: CACornerMask = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    
    /// Returns bottom corners.
    static let layerMaxYCorners: CACornerMask = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    
    /// Returns left corners in **RTL** languages and right corners in **LTR** languages.
    static let layerTrailingCorners: CACornerMask = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    
    /// Returns right corners in **RTL** languages and left corners in **LTR** languages.
    static let layerLeadingCorners: CACornerMask = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
    
    /// Returns top left corner and bottom right corner in **RTL** languages, top right corner and bottom left corner in **LTR** languages.
    static let layerMajorDiagonalCorners: CACornerMask = [.layerMinXMinYCorner, .layerMaxXMaxYCorner]
    
    /// Returns top right corner and bottom left corner in **RTL** languages, top left corner and bottom right corner in **LTR** languages.
    static let layerMinorDiagonalCorners: CACornerMask = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
}
