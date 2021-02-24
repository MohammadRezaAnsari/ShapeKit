//
//  CACornerMask+CornersConstants.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public extension CACornerMask {
    
    static let none: CACornerMask = []
    static let all: CACornerMask = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
    static let top: CACornerMask = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    static let bottom: CACornerMask = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    static let right: CACornerMask = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    static let left: CACornerMask = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    static let topRight: CACornerMask = [.layerMaxXMinYCorner]
    static let topLeft: CACornerMask = [.layerMinXMinYCorner]
    static let bottomRight: CACornerMask = [.layerMaxXMaxYCorner]
    static let bottomLeft: CACornerMask = [.layerMinXMaxYCorner]
}
