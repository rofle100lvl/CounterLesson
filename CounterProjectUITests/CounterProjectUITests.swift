//
//  CounterProjectUITests.swift
//  CounterProjectUITests
//
//  Created by Roman Gorbenko on 16.02.2025.
//

import XCTest

final class CounterProjectUITests: XCTestCase {
    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertTrue(app.staticTexts["Button"].isEnabled)
        XCTAssertTrue(app.staticTexts["Counter"].label == "0")
        app.staticTexts["Button"].tap()
        XCTAssertTrue(app.staticTexts["Counter"].label == "1")
        app.staticTexts["Button"].tap()
        XCTAssertTrue(app.staticTexts["Counter"].label == "2")
        for _ in 1...5 {
            app.staticTexts["Button"].tap()
        }
        XCTAssertTrue(app.staticTexts["Counter"].label == "7")

    }
}
