//
//  BrandColor.swift
//  BikeShare
//

import UIKit.UIColor

enum BrandColor: String, CaseIterable {
    case labelColor
    case selectedTabColor
    case unselectedTabColor
    case text
    case title
    case subtitle

    /// It's possible that this can return a different color depending on whether the UserInterfaceStyle is set to dark or light.
    /// This force unwrap is covered by unit tests.
    var color: UIColor {
        return UIColor(named: rawValue)!
    }
}
