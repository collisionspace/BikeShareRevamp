//
//  BikeShareCellViewModel.swift
//  BikeShare
//

import Foundation
import UIKit.UIFont

struct BikeShareCellViewModel: Hashable {
    let id: String
    let name: String
    let city: String
    let country: String

    private let foregroundColor = BrandColor.labelColor.color

    var titleAttributedString: NSAttributedString {
        NSAttributedString(
            string: name,
            attributes: [
                .foregroundColor: foregroundColor,
                .font: UIFont.systemFont(ofSize: 18, weight: .bold)
            ]
        )
    }

    var locationAttributedString: NSAttributedString {
        NSAttributedString(
            string: "\(city), \(country)",
            attributes: [
                .foregroundColor: foregroundColor,
                .font: UIFont.systemFont(ofSize: 14, weight: .light)
            ]
        )
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: BikeShareCellViewModel, rhs: BikeShareCellViewModel) -> Bool {
      lhs.id == rhs.id
    }
}
