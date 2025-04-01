//
//  ContentView.swift
//  Landmarks2
//
//  Created by bear on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}


#Preview {
    ContentView()
        .environment(ModelData.init())
}
