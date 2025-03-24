//
//  OnboardingThreePage.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 24/03/2025.
//

import Foundation
import UIKit

class OnboardingThreePage: UIView {
    func makePage() -> UIView {
        let page = UIView()
        page.translatesAutoresizingMaskIntoConstraints = false

        let bigText = UILabel()
        bigText.font = .systemFont(ofSize: 40, weight: .bold)
        bigText.textColor = .white
        bigText.text = "Win more deals\nSeal the Terms"
        bigText.numberOfLines = 2
        bigText.translatesAutoresizingMaskIntoConstraints = false

        let smallText = UILabel()
        smallText.font = .systemFont(ofSize: 18, weight: .light)
        smallText.textColor = .white
        smallText.text =
            "Turn pressure into power,\ncontrol every conversation,\nclose deals on your terms."
        smallText.numberOfLines = 3
        smallText.translatesAutoresizingMaskIntoConstraints = false

        page.addSubview(bigText)
        page.addSubview(smallText)

        NSLayoutConstraint.activate([
            smallText.bottomAnchor.constraint(
                equalTo:
                    page.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            smallText.leadingAnchor.constraint(
                equalTo: page.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            smallText.trailingAnchor.constraint(
                equalTo: page.safeAreaLayoutGuide.trailingAnchor, constant: -16),

            bigText.bottomAnchor.constraint(
                equalTo: smallText.topAnchor, constant: -16),
            bigText.leadingAnchor.constraint(
                equalTo: page.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            bigText.trailingAnchor.constraint(
                equalTo: page.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        ])

        return page
    }
}
