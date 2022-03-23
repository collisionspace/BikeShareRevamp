//
//  MapInteractor.swift
//  BikeShare
//

import Foundation

final class MapInteractor: MapUseCase {
    private let presenter: MapPresentation
    private let repository: BikeShareRepository

    init(presenter: MapPresentation, repository: BikeShareRepository) {
        self.presenter = presenter
        self.repository = repository
    }

    func fetchData() {
        repository.getAll { [weak self] result in
            switch result {
            case let .success(response):
                self?.presenter.presentAnnotations(bikeShares: response.shares)
            case let .failure(error):
                print(error)
            }
        }
    }
}
