//
//  DomainBikeShare.swift
//  BikeShare
//

struct DomainBikeShare: Codable, Equatable {
    let href: String
    let id: String
    let location: DomainBikeShareLocation
    let name: String
}

extension DomainBikeShare {

    init(data: BikeShare) {
        self.href = data.href
        self.id = data.id
        self.location = DomainBikeShareLocation(data: data.location)
        self.name = data.name
    }
}
