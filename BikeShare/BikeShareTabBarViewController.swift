//
//  BikeShareTabBarViewController.swift
//  BikeShare
//

import UIKit

typealias BikeShareTab = ViewScene & TabScene

final class BikeShareTabBarViewController: UITabBarController, UITabBarControllerDelegate {

    private let tabs: [BikeShareTab]

    init(tabs: [BikeShareTab]) {
        self.tabs = tabs
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabs.forEach { $0.attachTabBar() }
        viewControllers = tabs.map(\.viewController)
        tabBar.unselectedItemTintColor = BrandColor.unselectedTabColor.color
        tabBar.tintColor = BrandColor.selectedTabColor.color
    }

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
}
