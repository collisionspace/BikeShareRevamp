//
//  TestableDomainBikeShare.swift
//  BikeShareTests
//

import Foundation
@testable import BikeShare

extension DomainBikeShare {
    static let domain = DomainBikeShare(
        href: "/v2/networks/velobike-moscow",
        id: "velobike-moscow",
        location: DomainBikeShareLocation(
            city: "Moscow",
            country: "RU",
            latitude: 55.75,
            longitude: 37.616667
        ),
        name: "Velobike"
    )
}
