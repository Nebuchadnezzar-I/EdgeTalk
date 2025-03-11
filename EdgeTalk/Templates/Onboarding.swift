//
//  Onboarding.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import Foundation
import UIKit

func GenerateOnboardingText(
    mainText: String, mainTextLoC: Int,
    subText: String, subTextLoC: Int
) -> UIView {
    let container = UIView()

    let bigText = UILabel()
    bigText.text = mainText
    bigText.numberOfLines = mainTextLoC
    bigText.font = .systemFont(ofSize: 40, weight: .bold)
    bigText.textColor = .white
    bigText.translatesAutoresizingMaskIntoConstraints = false

    let smallText = UILabel()
    smallText.text = subText
    smallText.numberOfLines = subTextLoC
    smallText.font = .systemFont(ofSize: 16, weight: .regular)
    smallText.textColor = .white
    smallText.translatesAutoresizingMaskIntoConstraints = false

    container.addSubview(bigText)
    container.addSubview(smallText)

    NSLayoutConstraint.activate([
        bigText.topAnchor.constraint(equalTo: container.topAnchor),
        bigText.leadingAnchor.constraint(equalTo: container.leadingAnchor),
        bigText.trailingAnchor.constraint(equalTo: container.trailingAnchor),

        smallText.topAnchor.constraint(
            equalTo: bigText.bottomAnchor, constant: 20),
        smallText.leadingAnchor.constraint(equalTo: container.leadingAnchor),
        smallText.trailingAnchor.constraint(equalTo: container.trailingAnchor),
        smallText.bottomAnchor.constraint(equalTo: container.bottomAnchor),
    ])

    return container
}
