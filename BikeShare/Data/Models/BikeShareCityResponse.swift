//
//  BikeShareCityResponse.swift
//  BikeShare
//

import Foundation

struct BikeShareCityResponse: Codable {
    let shares: [BikeShare]

    enum CodingKeys: String, CodingKey {
        case shares = "networks"
    }
}
