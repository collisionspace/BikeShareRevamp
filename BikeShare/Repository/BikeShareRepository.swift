//
//  BikeShareRepository.swift
//  BikeShare
//

final class BikeShareRepository: Repository {
    typealias T = DomainBikeShareCityResponse

    private var cachedResponse: Result<T, Error>?
    private let worker: BikeShareService

    init(worker: BikeShareService) {
        self.worker = worker
    }

    func getAll(completion: @escaping (Result<T, Error>) -> Void) {
        if let response = cachedResponse {
            completion(response)
        } else {
            worker.fetchBikes { [unowned self] result in
                let domain = result.mapToDomain()
                self.cachedResponse = domain
                completion(domain)
            }
        }
    }

    func refresh(completion: @escaping (Result<T, Error>) -> Void) {
        worker.fetchBikes { [unowned self] result in
            let domain = result.mapToDomain()
            self.cachedResponse = domain
            completion(domain)
        }
    }
}

private extension Result where Success == BikeShareCityResponse, Failure == Error {

    func mapToDomain() -> Result<DomainBikeShareCityResponse, Error> {
        switch self {
        case let .success(result):
            return .success(DomainBikeShareCityResponse(data: result))
        case let .failure(error):
            return .failure(error)
        }
    }
}
