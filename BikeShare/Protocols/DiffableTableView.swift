//
//  DiffableTableView.swift
//  BikeShare
//

import UIKit

protocol DiffableTableView {
    associatedtype ViewModel: Hashable

    typealias DataSource = UITableViewDiffableDataSource<Section, ViewModel>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, ViewModel>

    var dataSource: DataSource { get }

    func applySnapshot(viewModel: [ViewModel], animatingDifferences: Bool)
}
