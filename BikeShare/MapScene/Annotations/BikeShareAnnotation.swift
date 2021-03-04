//
//  BikeShareAnnotation.swift
//  BikeShare
//

import MapKit.MKAnnotation

final class BikeShareAnnotation: NSObject, MKAnnotation {
    let id: String
    let title: String?
    let coordinate: CLLocationCoordinate2D

    init(viewModel: MapAnnotationViewModel) {
        self.id = viewModel.id
        self.title = viewModel.name
        self.coordinate = viewModel.coordinate
    }
}
