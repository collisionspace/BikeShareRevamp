//
//  BikeListScene.swift
//  BikeShare
//

import UIKit

final class BikeListScene: ViewScene, TabScene {
    private enum LocalizedUIText {
        static let tab = NSLocalizedString(
            "BikeListScene.tab",
            value: "Bike Shares",
            comment: "A tab title"
        )
    }

    private let respository: BikeShareRepository

    init(respository: BikeShareRepository) {
        self.respository = respository
    }

    func tabBarItem() -> UITabBarItem {
        UITabBarItem(
            title: LocalizedUIText.tab,
            image: nil,
            selectedImage: nil
        )
    }

    func attachTabBar() {
        viewController.tabBarItem = tabBarItem()
    }

    lazy var viewController: UIViewController = {
        let presenter = BikeListPresenter()
        let interactor = BikeListInteractor(presenter: presenter, worker: respository)
        let bikeListViewController = BikeListViewController(interactor: interactor)
        presenter.viewController = bikeListViewController
        return bikeListViewController
    }()
}
