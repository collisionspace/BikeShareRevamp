//
//  MapScene.swift
//  BikeShare
//

import UIKit

final class MapScene: ViewScene, TabScene {
    private enum LocalizedUIText {
        static let tab = NSLocalizedString(
            "MapScene.tab",
            value: "Map",
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
        let presenter = MapPresenter()
        let interactor = MapInteractor(presenter: presenter, repository: respository)
        let viewController = MapViewController(interactor: interactor)
        presenter.viewController = viewController
        return viewController
    }()
}
