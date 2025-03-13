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
                // Onboarding One (Visible)
                vc.OnboardingOneBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.OnboardingOneBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.OnboardingOneBigText.bottomAnchor.constraint(
                    equalTo: vc.OnboardingOneSubText.topAnchor, constant: -24),

                vc.OnboardingOneSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.OnboardingOneSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.OnboardingOneSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),

                // Onboarding Two (Invisible)
                vc.OnboardingTwoBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.OnboardingTwoBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.OnboardingTwoBigText.bottomAnchor.constraint(
                    equalTo: vc.OnboardingTwoSubText.topAnchor, constant: -24),

                vc.OnboardingTwoSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.OnboardingTwoSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.OnboardingTwoSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
                
                // Onboarding Three (Invisible)
                vc.OnboardingThreeBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.OnboardingThreeBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.OnboardingThreeBigText.bottomAnchor.constraint(
                    equalTo: vc.OnboardingThreeSubText.topAnchor, constant: -24),

                vc.OnboardingThreeSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.OnboardingThreeSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.OnboardingThreeSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
            ]

        case .OnboardingTwo:
            return [
                // Onboarding One (Invisible)
                vc.OnboardingOneBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.OnboardingOneBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.OnboardingOneBigText.bottomAnchor.constraint(
                    equalTo: vc.OnboardingOneSubText.topAnchor, constant: -24),

                vc.OnboardingOneSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.OnboardingOneSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.OnboardingOneSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),

                // Onboarding Two (Visible)
                vc.OnboardingTwoBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.OnboardingTwoBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.OnboardingTwoBigText.bottomAnchor.constraint(
                    equalTo: vc.OnboardingTwoSubText.topAnchor, constant: -24),

                vc.OnboardingTwoSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.OnboardingTwoSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.OnboardingTwoSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
                
                // Onboarding Three (Invisible)
                vc.OnboardingThreeBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.OnboardingThreeBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.OnboardingThreeBigText.bottomAnchor.constraint(
                    equalTo: vc.OnboardingThreeSubText.topAnchor, constant: -24),

                vc.OnboardingThreeSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.OnboardingThreeSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.OnboardingThreeSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
            ]

        case .OnboardingThree:
            return [
                // Onboarding One (Invisible)
                vc.OnboardingOneBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.OnboardingOneBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.OnboardingOneBigText.bottomAnchor.constraint(
                    equalTo: vc.OnboardingOneSubText.topAnchor, constant: -24),

                vc.OnboardingOneSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.OnboardingOneSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.OnboardingOneSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),

                // Onboarding Two (Visible)
                vc.OnboardingTwoBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.OnboardingTwoBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.OnboardingTwoBigText.bottomAnchor.constraint(
                    equalTo: vc.OnboardingTwoSubText.topAnchor, constant: -24),

                vc.OnboardingTwoSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.OnboardingTwoSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.OnboardingTwoSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
                
                // Onboarding Three (Invisible)
                vc.OnboardingThreeBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.OnboardingThreeBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.OnboardingThreeBigText.bottomAnchor.constraint(
                    equalTo: vc.OnboardingThreeSubText.topAnchor, constant: -24),

                vc.OnboardingThreeSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.OnboardingThreeSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.OnboardingThreeSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
            ]
        }
    }

}
