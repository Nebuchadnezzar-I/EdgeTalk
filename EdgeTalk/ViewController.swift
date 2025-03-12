//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

class ViewController: UIViewController {
    let SampleLabel: UILabel = {
        let label = UILabel()
        label.text = "Onboarding Screen One"
        label.textAlignment = .center
        label.backgroundColor = .systemBlue
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let SampleLabelOne: UILabel = {
        let label = UILabel()
        label.text = "Onboarding Screen Two"
        label.textAlignment = .center
        label.backgroundColor = .systemGreen
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let SampleLabelTwo: UILabel = {
        let label = UILabel()
        label.text = "Onboarding Screen Three"
        label.textAlignment = .center
        label.backgroundColor = .systemRed
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private var activeConstraints: [NSLayoutConstraint] = []
    private var currentScene: AppScene = .OnboardingOne

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(SampleLabel)
        view.addSubview(SampleLabelOne)
        view.addSubview(SampleLabelTwo)

        switchToScene(.OnboardingOne)

        setupNextButton()
    }

    func switchToScene(_ scene: AppScene) {
        NSLayoutConstraint.deactivate(activeConstraints)

        currentScene = scene
        activeConstraints = scene.createConstraints(for: self)

        NSLayoutConstraint.activate(activeConstraints)

        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
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
