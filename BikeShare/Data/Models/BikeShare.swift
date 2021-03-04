//
//  BikeShare.swift
//  BikeShare
//

struct BikeShare: Codable, Equatable {
    let href: String
    let id: String
    let location: BikeShareLocation
    let name: String
}
