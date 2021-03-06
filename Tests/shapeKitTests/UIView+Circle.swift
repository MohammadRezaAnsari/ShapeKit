//
//  UIView+Circle.swift
//  
//
//  Created by MohammadReza Ansary on 3/6/21.
//

import XCTest

@testable import ShapeKit

final class UIView_CircleTests: XCTestCase {
    
    var view: UIView!
    
    override func setUp() {
        view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
    }
    
    override func tearDown() {
        view = nil
    }
    
    func testMaskLayer_ShouldNotBeNil_ByApplyingShape() {
        view.applyCircle()
        let sut = view.layer.mask
        XCTAssertNotNil(sut)
    }
    
    
    func testSutLayerMask_ShouldBe_CAShapeLayer() {
        view.applyCircle()
        let mask = view.layer.mask as? CAShapeLayer
        XCTAssertNotNil(mask)
    }
    
    func testSutLayerMaskPath_ShouldNotBe_Nil() {
        view.applyCircle()
        let mask = view.layer.mask as? CAShapeLayer
        let path = mask?.path
        XCTAssertNotNil(path)
    }
    
    func testSutLayerMaskPath_ShouldBeEqualWith_CircleShapeMask() {
        view.applyCircle()
        let mask = view.layer.mask as? CAShapeLayer
        let path = mask?.path
        
        
        let arcCenter = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        let radius = CGFloat(min(view.bounds.midX - 1, view.bounds.midY - 1))
        
        let circlePath = UIBezierPath(
            arcCenter: arcCenter,
            radius: radius,
            startAngle: .zero,
            endAngle: CGFloat(Double.pi * 2),
            clockwise: true
        ).cgPath

        XCTAssertEqual(path, circlePath)
    }
}

