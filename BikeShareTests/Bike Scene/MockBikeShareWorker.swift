//
//  MockBikeShareWorker.swift
//  BikeShare
//

import Foundation
@testable import BikeShare

struct MockBikeShareWorker: BikeShareService {
    private struct Constants {
        static let mockJsonPath = Bundle.main.path(
            forResource: "mock_bike_share",
            ofType: "json"
        )
    }

    func fetchBikes(completion: @escaping (BikeListResponse) -> Void) {
        guard let mockJsonPath = Constants.mockJsonPath else {
            return
        }
        Networking.readFromDisk(from: URL(fileURLWithPath: mockJsonPath)) { (response: BikeListResponse) in
            completion(response)
        }
    }
}
