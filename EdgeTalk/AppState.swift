//
//  AppState.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 12/03/2025.
//

import Foundation
import UIKit

enum AppScene {
    case OnboardingOne
    case OnboardingTwo
    case OnboardingThree

    func createConstraints(for vc: ViewController) -> [NSLayoutConstraint] {
        switch self {
        case .OnboardingOne:
            return [
                vc.SampleLabel.centerXAnchor.constraint(
                    equalTo: vc.view.centerXAnchor),
                vc.SampleLabel.topAnchor.constraint(
                    equalTo: vc.view.safeAreaLayoutGuide.topAnchor, constant: 50
                ),
                vc.SampleLabel.leadingAnchor.constraint(
                    equalTo: vc.view.safeAreaLayoutGuide.leadingAnchor,
                    constant: 20),
                vc.SampleLabel.trailingAnchor.constraint(
                    equalTo: vc.view.safeAreaLayoutGuide.trailingAnchor,
                    constant: -20),
                vc.SampleLabel.heightAnchor.constraint(equalToConstant: 40),

                vc.SampleLabelOne.centerXAnchor.constraint(
                    equalTo: vc.view.centerXAnchor),
                vc.SampleLabelOne.topAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: 100),

                vc.SampleLabelTwo.centerXAnchor.constraint(
                    equalTo: vc.view.centerXAnchor),
                vc.SampleLabelTwo.topAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: 100),
            ]

        case .OnboardingTwo:
            return [
                vc.SampleLabelOne.centerXAnchor.constraint(
                    equalTo: vc.view.centerXAnchor),
                vc.SampleLabelOne.centerYAnchor.constraint(
                    equalTo: vc.view.safeAreaLayoutGuide.centerYAnchor),
                vc.SampleLabelOne.leadingAnchor.constraint(
                    equalTo: vc.view.safeAreaLayoutGuide.leadingAnchor,
                    constant: 30),
                vc.SampleLabelOne.trailingAnchor.constraint(
                    equalTo: vc.view.safeAreaLayoutGuide.trailingAnchor,
                    constant: -30),
                vc.SampleLabelOne.heightAnchor.constraint(equalToConstant: 50),
            ]

        case .OnboardingThree:
            return [
                vc.SampleLabelTwo.leadingAnchor.constraint(
                    equalTo: vc.view.safeAreaLayoutGuide.leadingAnchor,
                    constant: 20),
                vc.SampleLabelTwo.trailingAnchor.constraint(
                    equalTo: vc.view.safeAreaLayoutGuide.trailingAnchor,
                    constant: -20),
                vc.SampleLabelTwo.bottomAnchor.constraint(
                    equalTo: vc.view.safeAreaLayoutGuide.bottomAnchor,
                    constant: -40),
                vc.SampleLabelTwo.heightAnchor.constraint(equalToConstant: 60),
            ]
        }
    }

}
