//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Serena Savarese on 05/11/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
