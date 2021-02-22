//
//  Shapes.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public enum Shapes {
    case simple
    case curved(corner: ShapeCornersEnum, radius: Int)
    case custom(topRight: CGFloat = .zero, topLeft: CGFloat = .zero, bottomRight: CGFloat = .zero, bottomLeft: CGFloat = .zero)
    case circle
    
    var rawValue: Shape {
        switch self {
        case .curved(let corner, let radius):
            return CurvedShape(corners: corner.cornerMask, radius: radius)
        case .custom(let topRight, let topLeft, let bottomRight, let bottomLeft):
            return CustomShape(topRight: topRight, topLeft: topLeft, bottomRight: bottomRight, bottomLeft: bottomLeft)
        case .circle:
            return CircleShape()
        case .simple:
            return SimpleShape()
        }
    }
}
