//
//  LandmarkRow.swift
//  Landmarks2
//
//  Created by bear on 3/31/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark2: Landmark2
    var body: some View {
        HStack {
            landmark2.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark2.name)
            Spacer()
            
            if landmark2.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(Color.mint)
                    
            }
        }
    }
}

#Preview {
    let landmarks2 = ModelData().landmarks2
    Group {
        LandmarkRow(landmark2: landmarks2[0])
        LandmarkRow(landmark2: landmarks2[1])
        LandmarkRow(landmark2: landmarks2[2])
        LandmarkRow(landmark2: landmarks2[3])
    }
}
