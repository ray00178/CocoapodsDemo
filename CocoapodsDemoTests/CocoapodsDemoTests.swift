//
//  CocoapodsDemoTests.swift
//  CocoapodsDemoTests
//
//  Created by Ray on 2019/7/5.
//  Copyright © 2019 Ray. All rights reserved.
//

import XCTest
@testable import CocoapodsDemo

class CocoapodsDemoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testTaiwanMobile() {
        XCTAssert("0988123456".isValidPhone, "conform the number")
        XCTAssert("+886988123456".isValidPhone, "conform the number")
        
        XCTAssertFalse("065748523".isValidPhone)
    }
    
    func testReplace() {
        XCTAssert("Demo".replace(at: "e", to: "o") == "Domo")
        XCTAssert("Apple".replace(at: "p", to: "q") == "Aqqle")
        XCTAssert("Park".replace(at: "a", to: " ") == "P rk")
        
        XCTAssertFalse("XCode".replace(at: "C", to: "a") != "Xaode")
    }
}
