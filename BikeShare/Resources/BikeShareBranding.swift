//
//  BikeShareBranding.swift
//  BikeShare
//
//  Created by Daniel Slone on 3/12/21.
//

import UIKit.UIFont

struct BikeShareBranding: BrandingStyle {
    let typographyStyle: TypographyStyle
    let brandColor: BrandColor

    var font: UIFont {
        UIFont.systemFont(
            ofSize: typographyStyle.size,
            weight: typographyStyle.lineWeight
        )
    }

    static let title = BikeShareBranding(
        typographyStyle: BikeShareTypographyStyle.title,
        brandColor: .title
    )
    static let subtitle = BikeShareBranding(
        typographyStyle: BikeShareTypographyStyle.subtitle,
        brandColor: .subtitle
    )
}
