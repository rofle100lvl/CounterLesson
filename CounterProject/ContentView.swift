import SwiftUI

struct ContentView: View {
    @ObservedObject var counterViewModel: CounterViewModel
    
    var body: some View {
        // Clean code below. And write yours.
        Text("Hello world")
    }
}

#Preview {
    ContentView(counterViewModel: CounterViewModel())
}
