//
//  CounterProjectApp.swift
//  CounterProject
//
//  Created by Roman Gorbenko on 16.02.2025.
//

import SwiftUI

@main
struct CounterProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(counterViewModel: CounterViewModel())
        }
    }
}
