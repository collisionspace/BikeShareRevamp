//
//  BikeListPresenter.swift
//  BikeShare
//

import UIKit

final class BikeListPresenter: BikeListPresentation {

    weak var viewController: BikeListDisplay?

    func present(bikeShares: [DomainBikeShare]) {
        let viewModels = bikeShares.map {
            BikeShareCellViewModel(
                id: $0.id,
                name: $0.name,
                city: $0.location.city,
                country: $0.location.country
            )
        }
        viewController?.showBikes(viewModels: viewModels)
    }

    func present(error: Error) {
        
    }
}
