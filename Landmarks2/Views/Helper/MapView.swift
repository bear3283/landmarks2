//
//  MapView.swift
//  Landmarks2
//
//  Created by bear on 3/26/25.
//

import SwiftUI
import MapKit
//
//struct Xy {
//    var x: Int
//    var y: Int
//    
//    init(x: Int, y: Int) {
//        self.x = x / 2
//        self.y = y
//    }
//    
//    init(x: Int) {
//        self.x = x
//        self.y = 0
//    }
//    
//    init() {
//        self.x = 0
//        self.y = 0
//    }
//}
//
//var xy: Xy = Xy(x: 1)

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
        
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
