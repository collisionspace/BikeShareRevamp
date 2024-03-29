//
//  BikeListInteractorTests.swift
//  BikeShareTests
//

import XCTest
@testable import BikeShare

class BikeListInteractorTests: XCTestCase {

    private class BikeListInteractorSpy: BikeListPresentation {

        var bikeShares = [DomainBikeShare]()
        var error: Error?

        func present(bikeShares: [DomainBikeShare]) {
            self.bikeShares = bikeShares
        }

        func present(error: Error) {
            self.error = error
        }
    }

    func testFetchBikeShares() {
        let spy = BikeListInteractorSpy()
        let repository = BikeShareRepository(worker: MockBikeShareWorker())
        let interactor = BikeListInteractor(presenter: spy, worker: repository)
        interactor.fetchBikes()

        XCTAssertEqual(spy.bikeShares.count, 646)

        let firstBikeShare = spy.bikeShares.first
        XCTAssertEqual(firstBikeShare, .domain)
    }
}
