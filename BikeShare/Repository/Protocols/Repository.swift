//
//  Repository.swift
//  BikeShare
//

protocol Repository {
    associatedtype T
    func getAll(completion: @escaping (Result<T, Error>) -> Void)
}
