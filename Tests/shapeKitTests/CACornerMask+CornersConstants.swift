//
//  CACornerMask+CornersConstants.swift
//  
//
//  Created by MohammadReza Ansary on 3/3/21.
//

import XCTest

@testable import ShapeKit

final class CACornerMask_CornersConstantsTests: XCTestCase {
    
    func testLayerMinYCorners_ShouldContain_TopRightCorner() {
        let sut = CACornerMask.layerMinYCorners.contains(.layerMinXMinYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerMinYCorners_ShouldContain_TopLeftCorner() {
        let sut = CACornerMask.layerMinYCorners.contains(.layerMaxXMinYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerMaxYCorners_ShouldContain_BottomRightCorner() {
        let sut = CACornerMask.layerMaxYCorners.contains(.layerMinXMaxYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerMaxYCorners_ShouldContain_BottomLeftCorner() {
        let sut = CACornerMask.layerMaxYCorners.contains(.layerMaxXMaxYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerTrailingCorners_ShouldContain_TopTrailingCorner() {
        let sut = CACornerMask.layerTrailingCorners.contains(.layerMaxXMinYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerTrailingCorners_ShouldContain_BottomTrailingCorner() {
        let sut = CACornerMask.layerTrailingCorners.contains(.layerMaxXMaxYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerLeadingCorners_ShouldContain_TopLeadingCorner() {
        let sut = CACornerMask.layerLeadingCorners.contains(.layerMinXMinYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerLeadingCorners_ShouldContain_BottomLeadingCorner() {
        let sut = CACornerMask.layerLeadingCorners.contains(.layerMinXMaxYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerMajorDiagonalCorners_ShouldContain_TopLeadingCorner() {
        let sut = CACornerMask.layerMajorDiagonalCorners.contains(.layerMinXMinYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerMajorDiagonalCorners_ShouldContain_BottomTrailingCorner() {
        let sut = CACornerMask.layerMajorDiagonalCorners.contains(.layerMaxXMaxYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerMinorDiagonalCorners_ShouldContain_TopTrailingCorner() {
        let sut = CACornerMask.layerMinorDiagonalCorners.contains(.layerMaxXMinYCorner)
        XCTAssertTrue(sut)
    }
    
    func testLayerMinorDiagonalCorners_ShouldContain_BottomLeadingCorner() {
        let sut = CACornerMask.layerMinorDiagonalCorners.contains(.layerMinXMaxYCorner)
        XCTAssertTrue(sut)
    }
}
