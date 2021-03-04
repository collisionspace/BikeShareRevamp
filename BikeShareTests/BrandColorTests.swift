//
//  BrandColorTests.swift
//  BikeShareTests
//

import XCTest
@testable import BikeShare

class BrandColorTests: XCTestCase {

    // Tests if the colors actually exist in the assets
    func testAllNamedColorsExist() {
        BrandColor.allCases.forEach { color in
            XCTAssertNotNil(
                UIColor(named: color.rawValue),
                "Expected '\(color.rawValue)' to exist in Assets.xcassets, but its not there"
            )
        }
    }
}
