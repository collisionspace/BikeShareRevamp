//
//  BikeShareCellViewModel.swift
//  BikeShare
//

import Foundation

struct BikeShareCellViewModel: Hashable {
    let id: String

    @TextTheme(BikeShareBranding.title)
    private var title
    var titleAttributedString: NSAttributedString {
        _title.attributedValue
    }

    @TextTheme(BikeShareBranding.subtitle)
    private var subheader
    var subheaderAttributedString: NSAttributedString {
        _subheader.attributedValue
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: BikeShareCellViewModel, rhs: BikeShareCellViewModel) -> Bool {
      lhs.id == rhs.id
    }

    init(id: String, name: String, city: String, country: String) {
        self.id = id
        self.title = name
        self.subheader = "\(city), \(country)"
    }
}
