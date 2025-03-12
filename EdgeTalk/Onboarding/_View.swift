//
//  View.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 11/03/2025.
//

import Foundation
import UIKit

class OnboardingView: UIView {
    private(set) lazy var titleLabel = UILabel()
    private(set) lazy var descriptionLabel = UILabel()
    private(set) lazy var imageView = UIImageView()
    private(set) lazy var actionButton = UIButton(type: .system)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }

    private func setupUI() {
        backgroundColor = .systemBackground

        titleLabel.font = .systemFont(ofSize: 24, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        descriptionLabel.font = .systemFont(ofSize: 16)
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false

        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false

        actionButton.backgroundColor = .systemBlue
        actionButton.setTitleColor(.white, for: .normal)
        actionButton.layer.cornerRadius = 8
        actionButton.translatesAutoresizingMaskIntoConstraints = false

        [imageView, titleLabel, descriptionLabel, actionButton].forEach(
            addSubview)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.widthAnchor.constraint(
                equalTo: widthAnchor, multiplier: 0.6),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),

            titleLabel.topAnchor.constraint(
                equalTo: imageView.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(
                equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(
                equalTo: trailingAnchor, constant: -20),

            descriptionLabel.topAnchor.constraint(
                equalTo: titleLabel.bottomAnchor, constant: 12),
            descriptionLabel.leadingAnchor.constraint(
                equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(
                equalTo: trailingAnchor, constant: -20),

            actionButton.topAnchor.constraint(
                equalTo: descriptionLabel.bottomAnchor, constant: 30),
            actionButton.leadingAnchor.constraint(
                equalTo: leadingAnchor, constant: 40),
            actionButton.trailingAnchor.constraint(
                equalTo: trailingAnchor, constant: -40),
            actionButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

    func configure(with viewModel: OnboardingViewModel) {
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
        imageView.image = viewModel.image
        actionButton.setTitle(viewModel.buttonTitle, for: .normal)
    }
}
