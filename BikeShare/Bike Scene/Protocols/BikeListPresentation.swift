//
//  BikeListPresentation.swift
//  BikeShare
//

protocol BikeListPresentation {
    func present(bikeShares: [DomainBikeShare])
    func present(error: Error)
}
