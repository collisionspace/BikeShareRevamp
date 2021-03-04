//
//  BikeListWorker.swift
//  BikeShare
//

import Foundation

final class BikeShareWorker: BikeShareService {

    // Url has been broken out into pieces
    private var urlComponents: URLComponents {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.citybik.es"
        urlComponents.path = "/v2/networks"
        return urlComponents
    }

    func fetchBikes(completion: @escaping (BikeListResponse) -> Void) {
        Networking.request(url: urlComponents.url, method: .get) { (response: BikeListResponse) in
            completion(response)
        }
    }
}
