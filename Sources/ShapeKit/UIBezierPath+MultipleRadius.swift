//
//  UIBezierPath+MultipleRadius.swift
//  
//
//  Created by MohammadReza Ansary on 2/22/21.
//

import UIKit

extension UIBezierPath {
    
    convenience init(rect: CGRect, topLeft: CGSize = .zero, topRight: CGSize = .zero, bottomLeft: CGSize = .zero, bottomRight: CGSize = .zero) {
        self.init()
        
        var path = CGMutablePath()
        movePathOrigin(rect: rect, size: topLeft, to: &path)
        curveTopRight(size: topRight, by: rect, to: &path)
        curveBottomRight(size: bottomRight, by: rect, to: &path)
        curveBottomLeft(size: bottomLeft, by: rect, to: &path)
        curveTopLeft(size: topLeft, by: rect, to: &path)
        path.closeSubpath()
        cgPath = path
    }
    
    private func movePathOrigin(rect: CGRect, size: CGSize, to path: inout CGMutablePath) {
        
        let point = rect.origin
        let movingPoint: CGPoint
        
        if size != .zero {
            movingPoint = CGPoint(x: (point.x + size.width), y: point.y)
            path.move(to: movingPoint)
        } else {
            movingPoint = CGPoint(x: point.x, y: point.y)
            path.move(to: movingPoint)
        }
    }
    
    private func curveTopRight(size: CGSize, by rect: CGRect, to path: inout CGMutablePath) {
        
        let point = CGPoint(x: rect.maxX, y: rect.minY)
        
        if size != .zero {
            let linePoint = CGPoint(x: (point.x - size.width), y: point.y)
            path.addLine(to: linePoint)
            
            let curvePoint = CGPoint(x: point.x, y: (point.y + size.height))
            let firstControl = CGPoint(x: point.x, y: point.y)
            let secondControl = CGPoint(x: point.x, y: (point.y + size.height))
            path.addCurve(to: curvePoint, control1: firstControl, control2: secondControl)
            
        } else {
            addDefaultLine(point: point, to: &path)
        }
    }
    
    private func curveBottomRight(size: CGSize, by rect: CGRect, to path: inout CGMutablePath) {
        
        let point = CGPoint(x: rect.maxX, y: rect.maxY)
        
        if size != .zero {
            let linePoint = CGPoint(x: point.x, y: (point.y - size.height))
            path.addLine(to: linePoint)
            
            let curvePoint = CGPoint(x: (point.x - size.width), y: point.y)
            let firstControl = CGPoint(x: point.x, y: point.y)
            let secondControl = CGPoint(x: (point.x - size.width), y: point.y)
            path.addCurve(to: curvePoint, control1: firstControl, control2: secondControl)
            
        } else {
            addDefaultLine(point: point, to: &path)
        }
    }
    
    private func curveBottomLeft(size: CGSize, by rect: CGRect, to path: inout CGMutablePath) {
        
        let point = CGPoint(x: rect.minX, y: rect.maxY)
        
        if size != .zero {
            let linePoint = CGPoint(x: (point.x + size.width), y: point.y)
            path.addLine(to: linePoint)
            
            let curvePoint = CGPoint(x: point.x, y: (point.y - size.height))
            let firstControl = CGPoint(x: point.x, y: point.y)
            let secondControl = CGPoint(x: point.x, y: (point.y - size.height))
            path.addCurve(to: curvePoint, control1: firstControl, control2: secondControl)
            
        } else {
            addDefaultLine(point: point, to: &path)
        }
    }
    
    private func curveTopLeft(size: CGSize, by rect: CGRect, to path: inout CGMutablePath) {
        
        let point = rect.origin
        
        if size != .zero {
            let linePoint = CGPoint(x: point.x, y: (point.y + size.height))
            path.addLine(to: linePoint)
            
            let curvePoint = CGPoint(x: (point.x + size.width), y: point.y)
            let firstControl = CGPoint(x: point.x, y: point.y)
            let secondControl = CGPoint(x: (point.x + size.width), y: point.y)
            path.addCurve(to: curvePoint, control1: firstControl, control2: secondControl)
            
        } else {
            addDefaultLine(point: point, to: &path)
        }
    }
    
    private func addDefaultLine(point: CGPoint, to path: inout CGMutablePath) {
        let linePoint = CGPoint(x: point.x, y: point.y)
        path.addLine(to: linePoint)
    }
}
