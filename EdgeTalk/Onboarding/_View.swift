//
//  View.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 11/03/2025.
//

import Foundation
import UIKit

class OnboardingView: UIView {
    private var activeBubble: UInt8
    private var radarBubbleOne = UIView()
    private var radarBubbleTwo = UIView()
    private var radarBubbleThree = UIView()

    override init(frame: CGRect) {
        self.activeBubble = 0
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        self.activeBubble = 0
        super.init(coder: coder)
        setupView()
    }

    private let bigTitle: UILabel = {
        let label = UILabel()
        label.text = "Master Deals\nSharpen Skills"
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let subTitle: UILabel = {
        let label = UILabel()
        label.text =
            "Master negotiations with AI,\nsharpen your strategy today,\nwin deals with confidence."
        label.numberOfLines = 3
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.layer.cornerRadius = 28  // Half of 56 to make it circular
        button.backgroundColor = UIColor(
            red: 0 / 255, green: 122 / 255, blue: 255 / 255, alpha: 1)  // #007AFF
        button.widthAnchor.constraint(equalToConstant: 56).isActive = true
        button.heightAnchor.constraint(equalToConstant: 56).isActive = true

        // Add SF Symbol arrow.right image
        let arrowImage = UIImage(systemName: "arrow.right")?.withRenderingMode(
            .alwaysTemplate)
        button.setImage(arrowImage, for: .normal)
        button.tintColor = .black  // Set icon color to black

        // Enable auto layout
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()

    private func createRadarBubble(isMinimal: Bool) -> UIView {
        let frame = UIView()
        frame.translatesAutoresizingMaskIntoConstraints = false
        frame.widthAnchor.constraint(equalToConstant: 30).isActive = true
        frame.heightAnchor.constraint(equalToConstant: 30).isActive = true

        let bigBorderSize: CGFloat = isMinimal ? 4 : 30
        let middleBorderSize: CGFloat = isMinimal ? 4 : 14
        let bigBorderOpacity: CGFloat = isMinimal ? 0 : 0.1
        let middleBorderOpacity: CGFloat = isMinimal ? 0 : 0.3
        let centerOpacity: CGFloat = isMinimal ? 0.3 : 1.0

        let bigBorder = UIView()
        bigBorder.translatesAutoresizingMaskIntoConstraints = false
        bigBorder.layer.borderWidth = 1
        bigBorder.layer.borderColor =
            UIColor.white.withAlphaComponent(bigBorderOpacity).cgColor
        bigBorder.layer.cornerRadius = bigBorderSize / 2
        bigBorder.clipsToBounds = true

        let middleBorder = UIView()
        middleBorder.translatesAutoresizingMaskIntoConstraints = false
        middleBorder.layer.borderWidth = 1
        middleBorder.layer.borderColor =
            UIColor.white.withAlphaComponent(middleBorderOpacity).cgColor
        middleBorder.layer.cornerRadius = middleBorderSize / 2
        middleBorder.clipsToBounds = true

        let center = UIView()
        center.translatesAutoresizingMaskIntoConstraints = false
        center.backgroundColor = UIColor.white.withAlphaComponent(centerOpacity)
        center.layer.cornerRadius = 3
        center.clipsToBounds = true

        frame.addSubview(bigBorder)
        frame.addSubview(middleBorder)
        frame.addSubview(center)

        NSLayoutConstraint.activate([
            bigBorder.centerXAnchor.constraint(equalTo: frame.centerXAnchor),
            bigBorder.centerYAnchor.constraint(equalTo: frame.centerYAnchor),
            bigBorder.widthAnchor.constraint(equalToConstant: bigBorderSize),
            bigBorder.heightAnchor.constraint(equalToConstant: bigBorderSize),

            middleBorder.centerXAnchor.constraint(equalTo: frame.centerXAnchor),
            middleBorder.centerYAnchor.constraint(equalTo: frame.centerYAnchor),
            middleBorder.widthAnchor.constraint(
                equalToConstant: middleBorderSize),
            middleBorder.heightAnchor.constraint(
                equalToConstant: middleBorderSize),

            center.centerXAnchor.constraint(equalTo: frame.centerXAnchor),
            center.centerYAnchor.constraint(equalTo: frame.centerYAnchor),
            center.widthAnchor.constraint(equalToConstant: 6),
            center.heightAnchor.constraint(equalToConstant: 6),
        ])

        return frame
    }

    private func setupView() {
        addSubview(bigTitle)
        addSubview(subTitle)
        addSubview(mainButton)

        mainButton.addTarget(
            self, action: #selector(mainButtonTapped), for: .touchUpInside)

        activeBubble = 0

        radarBubbleOne = createRadarBubble(isMinimal: activeBubble != 0)
        radarBubbleTwo = createRadarBubble(isMinimal: activeBubble != 1)
        radarBubbleThree = createRadarBubble(isMinimal: activeBubble != 2)

        addSubview(radarBubbleOne)
        addSubview(radarBubbleTwo)
        addSubview(radarBubbleThree)

        NSLayoutConstraint.activate([
            subTitle.bottomAnchor.constraint(
                equalTo: radarBubbleOne.topAnchor, constant: -64),
            subTitle.leadingAnchor.constraint(
                equalTo: leadingAnchor, constant: 16),
            subTitle.trailingAnchor.constraint(equalTo: trailingAnchor),

            bigTitle.bottomAnchor.constraint(
                equalTo: subTitle.topAnchor, constant: -24),
            bigTitle.leadingAnchor.constraint(
                equalTo: leadingAnchor, constant: 16),
            bigTitle.trailingAnchor.constraint(equalTo: trailingAnchor),

            radarBubbleOne.centerXAnchor.constraint(
                equalTo: centerXAnchor, constant: -38),
            radarBubbleOne.bottomAnchor.constraint(
                equalTo: bottomAnchor, constant: -32),

            radarBubbleTwo.centerXAnchor.constraint(equalTo: centerXAnchor),
            radarBubbleTwo.bottomAnchor.constraint(
                equalTo: bottomAnchor, constant: -32),

            radarBubbleThree.centerXAnchor.constraint(
                equalTo: centerXAnchor, constant: 38),
            radarBubbleThree.bottomAnchor.constraint(
                equalTo: bottomAnchor, constant: -32),

            mainButton.trailingAnchor.constraint(
                equalTo: trailingAnchor, constant: -16),
            mainButton.bottomAnchor.constraint(
                equalTo: bottomAnchor, constant: -19),
        ])
    }

    private func updateBubbleAppearance() {
        // Remove current bubbles from view
        radarBubbleOne.removeFromSuperview()
        radarBubbleTwo.removeFromSuperview()
        radarBubbleThree.removeFromSuperview()

        // Create new bubbles with updated appearance
        radarBubbleOne = createRadarBubble(isMinimal: activeBubble != 0)
        radarBubbleTwo = createRadarBubble(isMinimal: activeBubble != 1)
        radarBubbleThree = createRadarBubble(isMinimal: activeBubble != 2)

        // Add them back to the view
        addSubview(radarBubbleOne)
        addSubview(radarBubbleTwo)
        addSubview(radarBubbleThree)

        // Re-add constraints
        NSLayoutConstraint.activate([
            subTitle.bottomAnchor.constraint(
                equalTo: radarBubbleOne.topAnchor, constant: -64),
            subTitle.leadingAnchor.constraint(
                equalTo: leadingAnchor, constant: 16),
            subTitle.trailingAnchor.constraint(equalTo: trailingAnchor),

            bigTitle.bottomAnchor.constraint(
                equalTo: subTitle.topAnchor, constant: -24),
            bigTitle.leadingAnchor.constraint(
                equalTo: leadingAnchor, constant: 16),
            bigTitle.trailingAnchor.constraint(equalTo: trailingAnchor),

            radarBubbleOne.centerXAnchor.constraint(
                equalTo: centerXAnchor, constant: -38),
            radarBubbleOne.bottomAnchor.constraint(
                equalTo: bottomAnchor, constant: -32),

            radarBubbleTwo.centerXAnchor.constraint(equalTo: centerXAnchor),
            radarBubbleTwo.bottomAnchor.constraint(
                equalTo: bottomAnchor, constant: -32),

            radarBubbleThree.centerXAnchor.constraint(
                equalTo: centerXAnchor, constant: 38),
            radarBubbleThree.bottomAnchor.constraint(
                equalTo: bottomAnchor, constant: -32),
        ])
    }

    private func updateTextForCurrentBubble() {
        switch activeBubble {
        case 0:
            bigTitle.text = "Master Deals\nSharpen Skills"
            subTitle.text =
                "Master negotiations with AI,\nsharpen your strategy today,\nwin deals with confidence."
        case 1:
            bigTitle.text = "Outsmart Them\nStay in Control"
            subTitle.text =
                "Understand persuasion tactics\noutsmart opponents with ease\nsecure the best outcomes."
        case 2:
            bigTitle.text = "Win more deals\nSeal the Terms"
            subTitle.text =
                "Turn pressure into power,\ncontrol every conversation,\nclose deals on your terms."
        default:
            break
        }
    }

    @objc private func mainButtonTapped() {
        activeBubble = (activeBubble + 1) % 3
        updateBubbleAppearance()
        updateTextForCurrentBubble()
    }
}
