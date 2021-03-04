//
//  MapPresenter.swift
//  BikeShare
//

import UIKit

final class MapPresenter: MapPresentation {

    weak var viewController: MapDisplay?

    func presentAnnotations(bikeShares: [DomainBikeShare]) {
        let viewModels = bikeShares.map {
            MapAnnotationViewModel(
                id: $0.id,
                latitude: $0.location.latitude,
                longitude: $0.location.longitude,
                name: $0.name
            )
        }
        viewController?.showAnnotations(viewModels: viewModels)
    }

    func present(error: Error) {

    }
}
