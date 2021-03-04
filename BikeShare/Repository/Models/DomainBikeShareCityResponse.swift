//
//  DomainBikeShareCityResponse.swift
//  BikeShare
//

import Foundation

struct DomainBikeShareCityResponse: Codable {
    let shares: [DomainBikeShare]
}

extension DomainBikeShareCityResponse {

    init(data: BikeShareCityResponse) {
        self.shares = data.shares.map {
            DomainBikeShare(data: $0)
        }
    }
}
