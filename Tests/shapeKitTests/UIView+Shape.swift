//
//  UIView+Shape.swift
//  
//
//  Created by MohammadReza Ansary on 3/6/21.
//

import XCTest

@testable import ShapeKit

final class UIView_ShapeTests: XCTestCase {
    
    var view: UIView!
    
    override func setUp() {
        view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    }
    
    override func tearDown() {
        view = nil
    }
    
    func testMaskLayer_ShouldNotBeNil_ByApplyingShape() {
        let fullCurvedShape = Shape.fullMajorRadiusCurved
        view.applyShape(fullCurvedShape)
        let sut = view.layer.mask
        XCTAssertNotNil(sut)
    }
    
    
    func testSutLayerMask_ShouldBe_CAShapeLayer() {
        let fullCurvedShape = Shape.fullMajorRadiusCurved
        view.applyShape(fullCurvedShape)
        let mask = view.layer.mask as? CAShapeLayer
        XCTAssertNotNil(mask)
    }
    
    func testSutLayerMaskPath_ShouldNotBe_Nil() {
        let fullCurvedShape = Shape.fullMajorRadiusCurved
        view.applyShape(fullCurvedShape)
        let mask = view.layer.mask as? CAShapeLayer
        let path = mask?.path
        XCTAssertNotNil(path)
    }
    
    func testSutLayerMaskPath_ShouldBeEqualWith_fullCurvedShapeMask() {
        let fullCurvedShape = Shape.fullMajorRadiusCurved
        view.applyShape(fullCurvedShape)
        let mask = view.layer.mask as? CAShapeLayer
        let path = mask?.path
        
        let maskPath = UIBezierPath(
            rect: view.bounds,
            topLeft: CGFloat(fullCurvedShape.topLeadingRadius),
            topRight: CGFloat(fullCurvedShape.topTrailingRadius),
            bottomLeft: CGFloat(fullCurvedShape.bottomLeadingRadius),
            bottomRight: CGFloat(fullCurvedShape.bottomTrailingRadius)
        ).cgPath
        
        XCTAssertEqual(path, maskPath)
    }
    
    func testSutLayerMaskPath_ShouldBeEqualWith_NoneCurvedShapeMask() {
        let fullCurvedShape = Shape.noneCurved
        view.applyShape(fullCurvedShape)
        let mask = view.layer.mask as? CAShapeLayer
        let path = mask?.path
        
        let maskPath = UIBezierPath(
            rect: view.bounds,
            topLeft: .zero,
            topRight: .zero,
            bottomLeft: .zero,
            bottomRight: .zero
        ).cgPath
        
        XCTAssertEqual(path, maskPath)
    }
}
