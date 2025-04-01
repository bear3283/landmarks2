//
//  Landmarks2App.swift
//  Landmarks2
//
//  Created by bear on 3/26/25.
//

import SwiftUI

@main
struct Landmarks2App: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
