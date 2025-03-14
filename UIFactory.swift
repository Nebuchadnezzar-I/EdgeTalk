//
//  UIFactory.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 14/03/2025.
//

import Foundation
import UIKit

extension UIViewController {
    func createTitleLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    /// Creates a styled subtitle label for onboarding screens
    func createSubtitleLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.numberOfLines = 3
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}

// MARK: - More flexible label factory
extension UIViewController {

    /// A more flexible label factory with customizable properties
    func createLabel(
        text: String,
        font: UIFont = UIFont.systemFont(ofSize: 17),
        textColor: UIColor = .black,
        textAlignment: NSTextAlignment = .left,
        numberOfLines: Int = 1
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = font
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.numberOfLines = numberOfLines
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
