import XCTest
import SnapshotTesting
@testable import CounterProject

final class ButtonViewTests: XCTestCase {
    func testButtonView() throws {
        let views = [
            ButtonView(text: "Вау, какая кнопка", action: {}),
            ButtonView(text: "Лабуда Лабуда Лабуда Лабуда Лабуда Лабуда", action: {}),

        ]
        views.forEach { view in
            assertSnapshot(of: view, as: .image(layout: .device(config: .iPhone13)))
        }
    }
}
