//
//  BikeListViewController.swift
//  BikeShare
//

import UIKit

final class BikeListViewController: UIViewController, DiffableTableView {
    typealias ViewModel = BikeShareCellViewModel

    @IBOutlet private var tableView: UITableView!

    lazy var dataSource: DataSource = {
        DataSource(tableView: tableView) { (tableView, indexPath, viewModel) -> BikeShareTableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: "bikeShareCell") as! BikeShareTableViewCell
            cell.configure(with: viewModel)
            return cell
        }
    }()

    private let interactor: BikeListUseCase

    init(interactor: BikeListUseCase) {
        self.interactor = interactor
        super.init(nibName: "BikeListViewController", bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        interactor.fetchBikes()
    }

    func applySnapshot(viewModel: [ViewModel], animatingDifferences: Bool) {
        var snapshot = Snapshot()
        snapshot.appendSections([.cities])
        snapshot.appendItems(viewModel)
        dataSource.apply(snapshot, animatingDifferences: animatingDifferences)
    }

    private func configureTableView() {
        tableView.register(
            UINib(nibName: "BikeShareTableViewCell", bundle: nil),
            forCellReuseIdentifier: "bikeShareCell"
        )
        applySnapshot(viewModel: [], animatingDifferences: false)
    }
}

extension BikeListViewController: BikeListDisplay {

    func showBikes(viewModels: [BikeShareCellViewModel]) {
        DispatchQueue.main.async { [unowned self] in
            applySnapshot(viewModel: viewModels, animatingDifferences: true)
        }
    }
}
