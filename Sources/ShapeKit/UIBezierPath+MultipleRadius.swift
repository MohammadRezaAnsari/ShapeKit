//
//  UIBezierPath+MultipleRadius.swift
//  
//
//  Created by MohammadReza Ansary on 2/22/21.
//

import UIKit

extension UIBezierPath {
    convenience init(rect: CGRect, topLeft: CGFloat = .zero, topRight: CGFloat = .zero, bottomLeft: CGFloat = .zero, bottomRight: CGFloat = .zero) {
        self.init()
        
        makeClockwiseShape: do {
            move(to: CGPoint(x: rect.midX, y: rect.minY))
            
            let topRightCenter = CGPoint(x: rect.maxX - (topRight), y: rect.minY + (topRight))
            if topRight != .zero {
                addLine(to: CGPoint(x: rect.maxX - topRight, y: rect.minY))
                addArc(withCenter: topRightCenter, radius: topRight, startAngle: -CGFloat.pi/2, endAngle: 0, clockwise: true)
            }
            else {
                addLine(to: topRightCenter)
            }
            
            let bottomRightCenter = CGPoint(x: rect.maxX - (bottomRight), y: rect.maxY - (bottomRight))
            if bottomRight != .zero {
                addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - bottomRight))
                addArc(withCenter: bottomRightCenter, radius: bottomRight, startAngle: 0, endAngle: CGFloat.pi/2, clockwise: true)
            }
            else {
                addLine(to: bottomRightCenter)
            }
            
            let bottomLeftCenter = CGPoint(x: rect.minX + (bottomLeft), y: rect.maxY - (bottomLeft))
            if bottomLeft != .zero {
                addLine(to: CGPoint(x: rect.minX + bottomLeft, y: rect.maxY))
                addArc(withCenter: bottomLeftCenter, radius: bottomLeft, startAngle: CGFloat.pi/2, endAngle: CGFloat.pi, clockwise: true)
            }
            else {
                addLine(to: bottomLeftCenter)
            }
            
            let topLeftCenter = CGPoint(x: rect.minX + (topLeft), y: rect.minY + (topLeft))
            if topLeft != .zero {
                addLine(to: CGPoint(x: rect.minX, y: rect.minY + topLeft))
                addArc(withCenter: topLeftCenter, radius: topLeft, startAngle: CGFloat.pi, endAngle: -CGFloat.pi/2, clockwise: true)
            }
            else {
                addLine(to: topLeftCenter)
            }
            
            close()
        }
    }
}
