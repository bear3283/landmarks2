//
//  Landmark2.swift
//  Landmarks2
//
//  Created by bear on 3/27/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}


//struct User {
//    name: String
//    password: String
//}
//
//let user: User = User(name:"testUser", password: "123asdf")
//
//"User{name:'testUser', password:'123asdf'}"


