//
//  OnboardingOne.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 15/03/2025.
//

import Foundation
import UIKit

class OnboardingOne: UIView {
    init() {
        super.init(frame: .zero)
        setupUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }

    private func setupUI() {
        self.translatesAutoresizingMaskIntoConstraints = false

        let label = UILabel()
        label.text = "Onboarding One"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false

        addSubview(label)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            label.leadingAnchor.constraint(
                equalTo: self.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(
                equalTo: self.trailingAnchor, constant: -16),
        ])
    }
}
