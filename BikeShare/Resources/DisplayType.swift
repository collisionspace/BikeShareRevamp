//
//  DisplayType.swift
//  BikeShare
//
//  Created by Daniel Slone on 3/15/21.
//

import UIKit

enum DisplayType {
    case title
    case subtitle

    var size: CGFloat {
        switch self {
        case .title:
            return 20
        case .subtitle:
            return 14
        }
    }

    var lineHeight: CGFloat {
        switch self {
        case .title:
            return 30
        case .subtitle:
            return 24
        }
    }

    var lineWeight: UIFont.Weight {
        switch self {
        case .title:
            return .regular
        case .subtitle:
            return .semibold
        }
    }
}
