//
//  Typography.swift
//  BikeShare
//
//  Created by Daniel Slone on 3/12/21.
//

import Foundation
import UIKit.UIFont

@propertyWrapper
struct TextTheme {

    var attributedValue: NSAttributedString {
        let attributedString = NSMutableAttributedString(
            string: wrappedValue,
            attributes: [
                .foregroundColor: branding.brandColor.color,
                .font: branding.font,
            ]
        )

        let stringLength = attributedString.length
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineSpacing = branding.typographyStyle.lineHeight
        let range = NSRange(location: .zero, length: stringLength)
        attributedString.addAttribute(
            .paragraphStyle,
            value: paragraph,
            range: range
        )
        return attributedString
    }

    var wrappedValue: String

    private let branding: BrandingStyle

    init(wrappedValue defaultValue: String = "", _ branding: BrandingStyle) {
        self.wrappedValue = defaultValue
        self.branding = branding
    }
}
