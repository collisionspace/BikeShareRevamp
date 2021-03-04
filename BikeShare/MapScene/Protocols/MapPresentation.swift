//
//  MapPresentation.swift
//  BikeShare
//

protocol MapPresentation {
    func presentAnnotations(bikeShares: [DomainBikeShare])
    func present(error: Error)
}
