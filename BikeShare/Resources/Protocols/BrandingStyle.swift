//
//  BrandingStyle.swift
//  BikeShare
//
//  Created by Daniel Slone on 3/12/21.
//

import  UIKit.UIFont

protocol BrandingStyle {
    var typographyStyle: TypographyStyle { get }
    var brandColor: BrandColor { get }
    var font: UIFont { get }
}
