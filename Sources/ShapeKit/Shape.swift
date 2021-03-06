//
//  Shape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public struct Shape {
    
    init(
        topLeadingRadius: CGFloat,
        topTrailingRadius: CGFloat,
        bottomLeadingRadius: CGFloat,
        bottomTrailingRadius: CGFloat
    ) {
        self.topLeadingRadius = topLeadingRadius
        self.topTrailingRadius = topTrailingRadius
        self.bottomLeadingRadius = bottomLeadingRadius
        self.bottomTrailingRadius = bottomTrailingRadius
    }
    
    var topLeadingRadius: CGFloat
    var topTrailingRadius: CGFloat
    var bottomLeadingRadius: CGFloat
    var bottomTrailingRadius: CGFloat
}

/* Extra bit standard instance definitions for `Shape'. */
public extension Shape {
    
    static let noneCurved = Shape(
        topLeadingRadius: .zero,
        topTrailingRadius: .zero,
        bottomLeadingRadius: .zero,
        bottomTrailingRadius: .zero)
    
    static let fullMajorRadiusCurved = Shape(
        topLeadingRadius: CGFloat(Radius.major.rawValue),
        topTrailingRadius: CGFloat(Radius.major.rawValue),
        bottomLeadingRadius: CGFloat(Radius.major.rawValue),
        bottomTrailingRadius: CGFloat(Radius.major.rawValue))
    
    static let fullMinorRadiusCurved = Shape(
        topLeadingRadius: CGFloat(Radius.minor.rawValue),
        topTrailingRadius: CGFloat(Radius.minor.rawValue),
        bottomLeadingRadius: CGFloat(Radius.minor.rawValue),
        bottomTrailingRadius: CGFloat(Radius.minor.rawValue))
    
    static let topMajorRadiusCurved = Shape(
        topLeadingRadius: CGFloat(Radius.major.rawValue),
        topTrailingRadius: CGFloat(Radius.major.rawValue),
        bottomLeadingRadius: .zero,
        bottomTrailingRadius: .zero)
    
    static let topMinorRadiusCurved = Shape(
        topLeadingRadius: CGFloat(Radius.minor.rawValue),
        topTrailingRadius: CGFloat(Radius.minor.rawValue),
        bottomLeadingRadius: .zero,
        bottomTrailingRadius: .zero)
    
    static let bottomMajorRadiusCurved = Shape(
        topLeadingRadius: .zero,
        topTrailingRadius: .zero,
        bottomLeadingRadius: CGFloat(Radius.major.rawValue),
        bottomTrailingRadius: CGFloat(Radius.major.rawValue))
    
    static let bottomMinorRadiusCurved = Shape(
        topLeadingRadius: .zero,
        topTrailingRadius: .zero,
        bottomLeadingRadius: CGFloat(Radius.minor.rawValue),
        bottomTrailingRadius: CGFloat(Radius.minor.rawValue))
}
