//
//  DomainBikeShareLocation.swift
//  BikeShare
//

struct DomainBikeShareLocation: Codable, Equatable {
    let city: String
    let country: String
    let latitude: Double
    let longitude: Double
}

extension DomainBikeShareLocation {

    init(data: BikeShareLocation) {
        self.city = data.city
        self.country = data.country
        self.latitude = data.latitude
        self.longitude = data.longitude
    }
}
