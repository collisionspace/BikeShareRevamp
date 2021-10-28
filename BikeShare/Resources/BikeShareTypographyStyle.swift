//
//  BikeShareTypographyStyle.swift
//  BikeShare
//
//  Created by Daniel Slone on 3/12/21.
//

import UIKit.UIFont

struct BikeShareTypographyStyle: TypographyStyle {
    let displayType: DisplayType

    var size: CGFloat { displayType.size }

    var lineHeight: CGFloat { displayType.lineHeight }

    var lineWeight: UIFont.Weight { displayType.lineWeight }

    static let title = BikeShareTypographyStyle(displayType: .title)
    static let subtitle = BikeShareTypographyStyle(displayType: .subtitle)
}
