//
//  BikeListDisplay.swift
//  BikeShare
//

protocol BikeListDisplay: AnyObject {
    func showBikes(viewModels: [BikeShareCellViewModel])
}
