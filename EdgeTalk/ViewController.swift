//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

class ViewController: UIViewController {
    // Temp
    
    let OnboardingOneBigText: UILabel = {
        let label = UILabel()
        label.text = "Master Deals\nSharpen Skills"
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let OnboardingOneSubText: UILabel = {
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
    
    let OnboardingTwoBigText: UILabel = {
        let label = UILabel()
        label.text = "Outsmart Them\nStay in Control"
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let OnboardingTwoSubText: UILabel = {
        let label = UILabel()
        label.text =
            "Understand persuasion tactics,\noutsmart opponents with ease,\nsecure the best outcomes."
        label.numberOfLines = 3
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let OnboardingThreeBigText: UILabel = {
        let label = UILabel()
        label.text = "Win more deals\nSeal the Terms"
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let OnboardingThreeSubText: UILabel = {
        let label = UILabel()
        label.text =
            "Turn pressure into power,\ncontrol every conversation,\nclose deals on your terms."
        label.numberOfLines = 3
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // Temp end

    private var activeConstraints: [NSLayoutConstraint] = []
    private var currentScene: AppScene = .OnboardingOne

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(OnboardingOneBigText)
        view.addSubview(OnboardingOneSubText)
        
        view.addSubview(OnboardingTwoBigText)
        view.addSubview(OnboardingTwoSubText)
        
        view.addSubview(OnboardingThreeBigText)
        view.addSubview(OnboardingThreeSubText)

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
