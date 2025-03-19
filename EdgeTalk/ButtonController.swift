//
//  ButtonController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 19/03/2025.
//

import Foundation
import UIKit

class ButtonController: UIView, UIUpdateDelegate {
    private lazy var nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
        button.addTarget(
            self, action: #selector(nextTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }

    private func setupButtons() {
        addSubview(nextButton)

        NSLayoutConstraint.activate([
            nextButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            nextButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            nextButton.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func updateButtonControls(with state: NavigationState) {
        // Handle button updates based on state
    }

    func updateSlideCarousel(with state: NavigationState) {
        // No need to handle this
    }

    @objc private func nextTapped() {
        NotificationCenter.default.post(name: .nextButtonTapped, object: nil)
    }
}
