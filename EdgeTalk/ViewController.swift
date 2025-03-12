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
    private let onboardingView = OnboardingView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupOnboardingView()
    }

    private func setupOnboardingView() {
        view.addSubview(onboardingView)
        onboardingView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            onboardingView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            onboardingView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor),
            onboardingView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor),
            onboardingView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
