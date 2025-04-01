//
//  LandmarkDetail.swift
//  Landmarks2
//
//  Created by bear on 3/31/25.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark2: Landmark2
    
    var landmarkIndex: Int {
        modelData.landmarks2.firstIndex(where: { $0.id == landmark2.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView{
                MapView(coordinate: landmark2.locationCoordinate)
                    .frame(height: 300)
                
                CircleImage(image: landmark2.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack (alignment: .leading) {
                    HStack {
                        Text(landmark2.name)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        FavoriteButton(inSet: $modelData.landmarks2[landmarkIndex].isFavorite)
                    }
                    
                    HStack {
                        Text(landmark2.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark2.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    Text("About \(landmark2.name)")
                        .font(.title2)
                    Text(landmark2.description)
                }
                .padding()
        }
        .navigationTitle(landmark2.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark2: modelData.landmarks2[0])
        .environment(modelData)
}
