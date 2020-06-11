//
//  XOLOUITests.swift
//  XOLOUITests
//
//  Created by ramil on 11.06.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import XCTest

class XOLOUITests: XCTestCase {
    
    let xoloApp = XCUIApplication(bundleIdentifier: "io.xolo.mobile")

    override func setUp() {
        xoloApp.launch()
    }
    
    override func tearDown() {
        xoloApp.terminate()
    }

    func testXoloAppOpen() throws {
        
        xoloApp.debugDescription
        
        XCTAssert(xoloApp.staticTexts["Get started"].exists)
        
        XCTAssert(xoloApp.staticTexts["Enter your email address to continue"].exists)
    }
}
