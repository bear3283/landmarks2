//
//  LandmarkList.swift
//  Landmarks2
//
//  Created by bear on 3/31/25.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks2: [Landmark2] {
        modelData.landmarks2.filter {landmark2 in
            (!showFavoritesOnly || landmark2.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
            ForEach(filteredLandmarks2) { landmark2 in
                    NavigationLink{
                        LandmarkDetail(landmark2: landmark2)
                    } label: {
                        LandmarkRow(landmark2: landmark2)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks2)
            .navigationTitle(Text("Landmarks"))
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
