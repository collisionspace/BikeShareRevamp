//
//  BikeShareTableViewCell.swift
//  BikeShare
//

import UIKit

final class BikeShareTableViewCell: UITableViewCell {

    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var subtitleLabel: UILabel!

    func configure(with viewModel: BikeShareCellViewModel) {
        titleLabel.attributedText = viewModel.titleAttributedString
        subtitleLabel.attributedText = viewModel.locationAttributedString
    }
}
