//
//  BottomControls.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 16/03/2025.
//

import Foundation
import UIKit

class BottomControls: UIView {
    // @Observe state changes to update UI (handleNextButtonStateChange)

    private var isNextButtonOnCooldown = false

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

        let mainButton = UIButton(type: .system)
        mainButton.setTitle("Next", for: .normal)
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.titleLabel?.font = UIFont.systemFont(
            ofSize: 16, weight: .semibold)
        mainButton.setTitleColor(.black, for: .normal)

        mainButton.backgroundColor = UIColor(
            red: 0 / 255, green: 122 / 255, blue: 255 / 255, alpha: 1)
        mainButton.layer.cornerRadius = 28
        mainButton.clipsToBounds = true

        mainButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(mainButton)

        mainButton.addTarget(
            self, action: #selector(nextButtonTapped), for: .touchUpInside)

        NSLayoutConstraint.activate([
            mainButton.centerXAnchor.constraint(
                equalTo: self.trailingAnchor, constant: -70),
            mainButton.centerYAnchor.constraint(
                equalTo: self.bottomAnchor, constant: -32),
            mainButton.heightAnchor.constraint(equalToConstant: 56),
            mainButton.widthAnchor.constraint(equalToConstant: 80),
        ])
    }

    @objc private func nextButtonTapped() {
        guard !isNextButtonOnCooldown else { return }

        isNextButtonOnCooldown = true

        NotificationCenter.default.post(name: .nextButtonTriggered, object: nil)

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.isNextButtonOnCooldown = false
        }
    }
}
