//
//  BikeShareService.swift
//  BikeShare
//

import Foundation

protocol BikeShareService {
    typealias BikeListResponse = Result<BikeShareCityResponse, Error>

    func fetchBikes(completion: @escaping (BikeListResponse) -> Void)
}
