//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

class ViewController: UIViewController {
    lazy var onboardingOneBigText = createTitleLabel(
        text: "Master Deals\nSharpen Skills")
    lazy var onboardingOneSubText = createSubtitleLabel(
        text:
            "Master negotiations with AI,\nsharpen your strategy today,\nwin deals with confidence."
    )

    // Onboarding Two
    lazy var onboardingTwoBigText = createTitleLabel(
        text: "Outsmart Them\nStay in Control")
    lazy var onboardingTwoSubText = createSubtitleLabel(
        text:
            "Understand persuasion tactics,\noutsmart opponents with ease,\nsecure the best outcomes."
    )

    // Onboarding Three
    lazy var onboardingThreeBigText = createTitleLabel(
        text: "Win more deals\nSeal the Terms")
    lazy var onboardingThreeSubText = createSubtitleLabel(
        text:
            "Turn pressure into power,\ncontrol every conversation,\nclose deals on your terms."
    )

    private var activeConstraints: [NSLayoutConstraint] = []
    private var currentScene: AppScene = .OnboardingOne

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubviews(
            onboardingOneBigText, onboardingOneSubText,
            onboardingTwoBigText, onboardingTwoSubText,
            onboardingThreeBigText, onboardingThreeSubText
        )

        switchToScene(.OnboardingOne)

        setupNextButton()
    }

    func switchToScene(_ scene: AppScene) {
        NSLayoutConstraint.deactivate(activeConstraints)

        currentScene = scene
        activeConstraints = scene.createConstraints(for: self)

        NSLayoutConstraint.activate(activeConstraints)

        UIView.animate(
            withDuration: 0.3,
            delay: 0,
            usingSpringWithDamping: 0.7,
            initialSpringVelocity: 0.8,
            options: [.curveEaseInOut],
            animations: {
                self.view.layoutIfNeeded()
            }
        )

    }

    func setupNextButton() {
        let button = UIButton(type: .system)
        button.setTitle("Next Scene", for: .normal)
        button.addTarget(
            self, action: #selector(nextButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            button.widthAnchor.constraint(equalToConstant: 150),
            button.heightAnchor.constraint(equalToConstant: 44),
        ])
    }

    @objc func nextButtonTapped() {
        switch currentScene {
        case .OnboardingOne:
            switchToScene(.OnboardingTwo)
        case .OnboardingTwo:
            switchToScene(.OnboardingThree)
        case .OnboardingThree:
            switchToScene(.OnboardingOne)
        }
    }
}
