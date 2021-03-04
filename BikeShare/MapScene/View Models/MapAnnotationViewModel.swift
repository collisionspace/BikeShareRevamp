//
//  MapAnnotationViewModel.swift
//  BikeShare
//

import CoreLocation

struct MapAnnotationViewModel {
    let id: String
    let latitude: Double
    let longitude: Double
    let name: String

    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
