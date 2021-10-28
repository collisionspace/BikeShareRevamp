//
//  TypographyStyle.swift
//  BikeShare
//
//  Created by Daniel Slone on 3/12/21.
//

import UIKit.UIFont

protocol TypographyStyle {
    var size: CGFloat { get }
    var lineHeight: CGFloat { get }
    var lineWeight: UIFont.Weight { get }
}
