//
//  Vape_XTests.swift
//  Vape-XTests
//
//  Created by Haroon Maqsood on 9/18/22.
//

import XCTest
@testable import Vape_X

final class Vape_XTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let test = 12
        XCTAssertEqual(test, 2)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
