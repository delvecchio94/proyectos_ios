//
//  RectTest.swift
//  DemoTestTests
//
//  Created by Estudiante on 30/11/18.
//  Copyright © 2018 delvecchio. All rights reserved.
//

import XCTest

@testable import DemoTest

class RectTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let rect = Rect(height: 10, width: 20)
        XCTAssertEqual(rect.area, 300)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
