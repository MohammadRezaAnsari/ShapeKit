//
//  CACornerMask+CaseIterable.swift
//  
//
//  Created by MohammadReza Ansary on 3/3/21.
//

import XCTest

@testable import ShapeKit

final class CACornerMask_CaseIterable: XCTestCase {
    
    func testAllCasesType_ShouldBeEqualTo_CACornerMask() {
        let sut = CACornerMask.AllCases.self
        XCTAssertTrue(sut == CACornerMask.self)
    }
    
    func testCACornerMaskAllCases_ShouldContain_TopTrailingCorner() {
        let sut = CACornerMask.allCases.contains(.layerMaxXMinYCorner)
        XCTAssertTrue(sut)
    }
    
    func testCACornerMaskAllCases_ShouldContain_TopLeadingCorner() {
        let sut = CACornerMask.allCases.contains(.layerMinXMinYCorner)
        XCTAssertTrue(sut)
    }
    
    func testCACornerMaskAllCases_ShouldContain_BottomTrailingCorner() {
        let sut = CACornerMask.allCases.contains(.layerMaxXMaxYCorner)
        XCTAssertTrue(sut)
    }
    
    func testCACornerMaskAllCases_ShouldContain_BottomLeadingCorner() {
        let sut = CACornerMask.allCases.contains(.layerMinXMaxYCorner)
        XCTAssertTrue(sut)
    }
    
    func testCACornerMaskAllCases_ShouldContain_AllCorners() {
        let topTrailingCorner = CACornerMask.allCases.contains(.layerMaxXMinYCorner)
        let topLeadingCorner = CACornerMask.allCases.contains(.layerMinXMinYCorner)
        let bottomTrailingCorner = CACornerMask.allCases.contains(.layerMaxXMaxYCorner)
        let bottomLeadingCorner = CACornerMask.allCases.contains(.layerMinXMaxYCorner)
        var isContainAllFourCorners: Bool {
            topTrailingCorner && topLeadingCorner && bottomTrailingCorner && bottomLeadingCorner
        }
        XCTAssertTrue(isContainAllFourCorners)
    }
}
