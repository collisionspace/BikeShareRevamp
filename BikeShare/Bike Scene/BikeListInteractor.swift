//
//  BikeListInteractor.swift
//  BikeShare
//

final class BikeListInteractor: BikeListUseCase {
    private let presenter: BikeListPresentation
    private let worker: BikeShareRepository
    private var bikeShares = [DomainBikeShare]()

    init(presenter: BikeListPresentation, worker: BikeShareRepository) {
        self.presenter = presenter
        self.worker = worker
    }

    func fetchBikes() {
        worker.getAll { [unowned self] result in
            switch result {
            case let .success(response):
                self.bikeShares = response.shares
                self.presenter.present(bikeShares: bikeShares)
            case let .failure(error):
                self.presenter.present(error: error)
            }
        }
    }
}
