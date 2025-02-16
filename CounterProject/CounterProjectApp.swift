import SwiftUI

@main
struct CounterProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(counterViewModel: CounterViewModel())
        }
    }
}
