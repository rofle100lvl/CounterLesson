import XCTest
import SnapshotTesting
@testable import CounterProject

final class ContentViewTests: XCTestCase {
    func testContentViewView() throws {
        let counterViewModel = CounterViewModel()
        let views = [
            ContentView(counterViewModel: CounterViewModel()),
            ContentView(counterViewModel: counterViewModel),
        ]
        for _ in (0...99) {
            counterViewModel.increment()
        }
        views.forEach { view in
            assertSnapshot(of: view, as: .image(layout: .device(config: .iPhone13)))
        }
    }
}
