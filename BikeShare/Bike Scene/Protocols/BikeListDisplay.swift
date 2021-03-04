//
//  BikeListDisplay.swift
//  BikeShare
//

protocol BikeListDisplay: class {
    func showBikes(viewModels: [BikeShareCellViewModel])
}
