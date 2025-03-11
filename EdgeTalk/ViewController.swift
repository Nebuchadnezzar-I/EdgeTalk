//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import SnapKit
import Then
import UIKit

class ViewController: UIViewController {
    @objc func incrementBubbleIndex() {
        AppState.shared.activeBubbleIndex += 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Parent
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false

        let bigText = UILabel()
        bigText.text = "Negotiate smart\nWin more deals"
        bigText.numberOfLines = 2
        bigText.font = .systemFont(ofSize: 40, weight: .bold)
        bigText.textColor = .white
        bigText.translatesAutoresizingMaskIntoConstraints = false

        bigText.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(incrementBubbleIndex))
        bigText.addGestureRecognizer(tapGesture)

        let smallText = UILabel()
        smallText.text =
            "Master the art of persuasion\nwith AI-driven insights and\nreal-world negotiation tactics."
        smallText.numberOfLines = 3
        smallText.font = .systemFont(ofSize: 16, weight: .regular)
        smallText.textColor = .white
        smallText.translatesAutoresizingMaskIntoConstraints = false

        let footerBubbles = UIView()
        footerBubbles.translatesAutoresizingMaskIntoConstraints = false

        let bubbleLayout1 = CreateBubbleRadar(idx: 0)
        let bubbleLayout2 = CreateBubbleRadar(idx: 1)
        let bubbleLayout3 = CreateBubbleRadar(idx: 2)

        footerBubbles.addSubview(bubbleLayout1)
        footerBubbles.addSubview(bubbleLayout2)
        footerBubbles.addSubview(bubbleLayout3)

        container.addSubview(bigText)
        container.addSubview(smallText)
        container.addSubview(footerBubbles)
        //

        // Tree
        view.addSubview(container)
        //

        // Constrains
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            container.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            container.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            container.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),

            smallText.bottomAnchor.constraint(
                equalTo: footerBubbles.topAnchor, constant: -48),
            smallText.leadingAnchor.constraint(
                equalTo: container.leadingAnchor),
            smallText.trailingAnchor.constraint(
                equalTo: container.trailingAnchor),

            bigText.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            bigText.trailingAnchor.constraint(
                equalTo: container.trailingAnchor),
            bigText.bottomAnchor.constraint(
                equalTo: smallText.topAnchor, constant: -20),

            footerBubbles.centerXAnchor.constraint(
                equalTo: container.centerXAnchor),
            footerBubbles.bottomAnchor.constraint(
                equalTo: container.bottomAnchor),
            footerBubbles.widthAnchor.constraint(equalToConstant: 106),
            footerBubbles.heightAnchor.constraint(equalToConstant: 30),

            bubbleLayout1.leadingAnchor.constraint(
                equalTo: footerBubbles.leadingAnchor),
            bubbleLayout2.centerXAnchor.constraint(
                equalTo: footerBubbles.centerXAnchor),
            bubbleLayout3.trailingAnchor.constraint(
                equalTo: footerBubbles.trailingAnchor),
        ])
        //
    }
}
