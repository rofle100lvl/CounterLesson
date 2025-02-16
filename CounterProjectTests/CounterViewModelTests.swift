//
//  CounterProjectTests.swift
//  CounterProjectTests
//
//  Created by Roman Gorbenko on 16.02.2025.
//

import XCTest
import SnapshotTesting
@testable import CounterProject

final class CounterViewModelTests: XCTestCase {
    var counterViewModel: CounterViewModel!
    
    override func setUp() async throws {
        counterViewModel = CounterViewModel()
    }
    
    func testCounterViewModel() throws {
        let counterViewModel = CounterViewModel()
        XCTAssertTrue(counterViewModel.counter == 0)
        counterViewModel.increment()
        XCTAssertTrue(counterViewModel.counter == 1)
        for _ in (0...100) {
            counterViewModel.increment()
        }
        XCTAssertTrue(counterViewModel.counter == 102)
    }
}
