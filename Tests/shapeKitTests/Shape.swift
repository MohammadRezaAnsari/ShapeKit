//
//  Shape.swift
//  
//
//  Created by MohammadReza Ansary on 3/6/21.
//

import XCTest

@testable import ShapeKit

final class ShapeTests: XCTestCase {
    
    // MARK: - None Curved
    func testNoneCurved_ShouldEqualTo_Zero() {
        let sut = ShapeKit.Shape.noneCurved
        XCTAssertEqual(sut.topTrailingRadius, .zero)
        XCTAssertEqual(sut.topLeadingRadius, .zero)
        XCTAssertEqual(sut.bottomTrailingRadius, .zero)
        XCTAssertEqual(sut.bottomLeadingRadius, .zero)
    }
        
    // MARK: - Full Major Radius Curved
    func testFullMajorRadiusCurved_ShouldNotEqualTo_Zero() {
        let sut = ShapeKit.Shape.fullMajorRadiusCurved
        XCTAssertNotEqual(sut.topTrailingRadius, .zero)
        XCTAssertNotEqual(sut.topLeadingRadius, .zero)
        XCTAssertNotEqual(sut.bottomTrailingRadius, .zero)
        XCTAssertNotEqual(sut.bottomLeadingRadius, .zero)
    }
    
    func testFullMajorRadiusCurved_ShouldEqualWith_MajorRadius() {
        let sut = ShapeKit.Shape.fullMajorRadiusCurved
        XCTAssertEqual(sut.topTrailingRadius, CGFloat(Radius.major.rawValue))
        XCTAssertEqual(sut.topLeadingRadius, CGFloat(Radius.major.rawValue))
        XCTAssertEqual(sut.bottomTrailingRadius, CGFloat(Radius.major.rawValue))
        XCTAssertEqual(sut.bottomLeadingRadius, CGFloat(Radius.major.rawValue))
    }
    
    // MARK: - Full Minor Radius Curved
    func testFullMinorRadiusCurved_ShouldNotEqualTo_Zero() {
        let sut = ShapeKit.Shape.fullMinorRadiusCurved
        XCTAssertNotEqual(sut.topTrailingRadius, .zero)
        XCTAssertNotEqual(sut.topLeadingRadius, .zero)
        XCTAssertNotEqual(sut.bottomTrailingRadius, .zero)
        XCTAssertNotEqual(sut.bottomLeadingRadius, .zero)
    }
    
    func testFullMinorRadiusCurved_ShouldEqualWith_MinorRadius() {
        let sut = ShapeKit.Shape.fullMinorRadiusCurved
        XCTAssertEqual(sut.topTrailingRadius, CGFloat(Radius.minor.rawValue))
        XCTAssertEqual(sut.topLeadingRadius, CGFloat(Radius.minor.rawValue))
        XCTAssertEqual(sut.bottomTrailingRadius, CGFloat(Radius.minor.rawValue))
        XCTAssertEqual(sut.bottomLeadingRadius, CGFloat(Radius.minor.rawValue))
    }
    
    // MARK: - Top Major Radius Curved
    func testTopMajorRadiusCurved_TopSideShouldNotEqualTo_Zero() {
        let sut = ShapeKit.Shape.topMajorRadiusCurved
        XCTAssertNotEqual(sut.topTrailingRadius, .zero)
        XCTAssertNotEqual(sut.topLeadingRadius, .zero)
    }
    
    func testTopMajorRadiusCurved_BottomSideShouldEqualTo_Zero() {
        let sut = ShapeKit.Shape.topMajorRadiusCurved
        XCTAssertEqual(sut.bottomTrailingRadius, .zero)
        XCTAssertEqual(sut.bottomLeadingRadius, .zero)
    }
    
    func testTopMajorRadiusCurved_TopSideShouldEqualWith_MajorRadius() {
        let sut = ShapeKit.Shape.topMajorRadiusCurved
        XCTAssertEqual(sut.topTrailingRadius, CGFloat(Radius.major.rawValue))
        XCTAssertEqual(sut.topLeadingRadius, CGFloat(Radius.major.rawValue))
    }
    
    // MARK: - Top Minor Radius Curved
    func testTopMinorRadiusCurved_TopSideShouldNotEqualTo_Zero() {
        let sut = ShapeKit.Shape.topMinorRadiusCurved
        XCTAssertNotEqual(sut.topTrailingRadius, .zero)
        XCTAssertNotEqual(sut.topLeadingRadius, .zero)
    }
    
    func testTopMinorRadiusCurved_BottomSideShouldEqualTo_Zero() {
        let sut = ShapeKit.Shape.topMinorRadiusCurved
        XCTAssertEqual(sut.bottomTrailingRadius, .zero)
        XCTAssertEqual(sut.bottomLeadingRadius, .zero)
    }
    
    func testTopMinorRadiusCurved_TopSideShouldEqualWith_MinorRadius() {
        let sut = ShapeKit.Shape.topMinorRadiusCurved
        XCTAssertEqual(sut.topTrailingRadius, CGFloat(Radius.minor.rawValue))
        XCTAssertEqual(sut.topLeadingRadius, CGFloat(Radius.minor.rawValue))
    }
    
    // MARK: - Bottom Major Radius Curved
    func testBottomMajorRadiusCurved_BottomSideShouldNotEqualTo_Zero() {
        let sut = ShapeKit.Shape.bottomMajorRadiusCurved
        XCTAssertNotEqual(sut.bottomTrailingRadius, .zero)
        XCTAssertNotEqual(sut.bottomLeadingRadius, .zero)
    }
    
    func testBottomMajorRadiusCurved_TopSideShouldEqualTo_Zero() {
        let sut = ShapeKit.Shape.bottomMajorRadiusCurved
        XCTAssertEqual(sut.topTrailingRadius, .zero)
        XCTAssertEqual(sut.topLeadingRadius, .zero)
    }
    
    func testBottomMajorRadiusCurved_TopSideShouldEqualWith_MajorRadius() {
        let sut = ShapeKit.Shape.bottomMajorRadiusCurved
        XCTAssertEqual(sut.bottomTrailingRadius, CGFloat(Radius.major.rawValue))
        XCTAssertEqual(sut.bottomLeadingRadius, CGFloat(Radius.major.rawValue))
    }
    
    // MARK: - Bottom Minor Radius Curved
    func testBottomMinorRadiusCurved_BottomSideShouldNotEqualTo_Zero() {
        let sut = ShapeKit.Shape.bottomMinorRadiusCurved
        XCTAssertNotEqual(sut.bottomTrailingRadius, .zero)
        XCTAssertNotEqual(sut.bottomLeadingRadius, .zero)
    }
    
    func testBottomMinorRadiusCurved_TopSideShouldEqualTo_Zero() {
        let sut = ShapeKit.Shape.bottomMinorRadiusCurved
        XCTAssertEqual(sut.topTrailingRadius, .zero)
        XCTAssertEqual(sut.topLeadingRadius, .zero)
    }
    
    func testBottomMinorRadiusCurved_TopSideShouldEqualWith_MinorRadius() {
        let sut = ShapeKit.Shape.bottomMinorRadiusCurved
        XCTAssertEqual(sut.bottomTrailingRadius, CGFloat(Radius.minor.rawValue))
        XCTAssertEqual(sut.bottomLeadingRadius, CGFloat(Radius.minor.rawValue))
    }
}

