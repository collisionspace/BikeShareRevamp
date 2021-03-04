//
//  ViewFactory.swift
//  BikeShare
//

import UIKit

final class ViewFactory: InitialViewFactory {

    static func makeInitialViewController() -> UIViewController {
        let repository = BikeShareRepository(
            worker: BikeShareWorker()
        )

        let bikeList = BikeListScene(respository: repository)
        let map = MapScene(respository: repository)

        return BikeShareTabBarViewController(
            tabs: [
                bikeList,
                map
            ]
        )
    }
}

