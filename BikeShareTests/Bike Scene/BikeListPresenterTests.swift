//
//  BikeListPresenterTests.swift
//  BikeShareTests
//

import XCTest
@testable import BikeShare

class BikeListPresenterTests: XCTestCase {

    private class BikeListPresenterSpy: BikeListDisplay {
        var bikeViewModels = [BikeShareCellViewModel]()

        func showBikes(viewModels: [BikeShareCellViewModel]) {
            self.bikeViewModels = viewModels
        }
    }

    func testBikeShareViewModels() {
        let spy = BikeListPresenterSpy()
        let presenter = BikeListPresenter()
        presenter.viewController = spy
        let repository = BikeShareRepository(worker: MockBikeShareWorker())
        let interactor = BikeListInteractor(presenter: presenter, worker: repository)
        interactor.fetchBikes()

        let firstViewModel = spy.bikeViewModels.first
        let domain = DomainBikeShare.domain
        let viewModel = BikeShareCellViewModel(
            id: domain.id,
            name: domain.name,
            city: domain.location.city,
            country: domain.location.country
        )
        XCTAssertEqual(firstViewModel, viewModel)
    }
}
