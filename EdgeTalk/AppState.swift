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
                vc.onboardingOneBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.onboardingOneBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.onboardingOneBigText.bottomAnchor.constraint(
                    equalTo: vc.onboardingOneSubText.topAnchor, constant: -24),

                vc.onboardingOneSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.onboardingOneSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.onboardingOneSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),

                // Onboarding Two (Invisible)
                vc.onboardingTwoBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.onboardingTwoBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.onboardingTwoBigText.bottomAnchor.constraint(
                    equalTo: vc.onboardingTwoSubText.topAnchor, constant: -24),

                vc.onboardingTwoSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.onboardingTwoSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.onboardingTwoSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
                
                // Onboarding Three (Invisible)
                vc.onboardingThreeBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.onboardingThreeBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.onboardingThreeBigText.bottomAnchor.constraint(
                    equalTo: vc.onboardingThreeSubText.topAnchor, constant: -24),

                vc.onboardingThreeSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.onboardingThreeSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.onboardingThreeSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
            ]

        case .OnboardingTwo:
            return [
                // Onboarding One (Invisible)
                vc.onboardingOneBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.onboardingOneBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.onboardingOneBigText.bottomAnchor.constraint(
                    equalTo: vc.onboardingOneSubText.topAnchor, constant: -24),

                vc.onboardingOneSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.onboardingOneSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.onboardingOneSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),

                // Onboarding Two (Visible)
                vc.onboardingTwoBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.onboardingTwoBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.onboardingTwoBigText.bottomAnchor.constraint(
                    equalTo: vc.onboardingTwoSubText.topAnchor, constant: -24),

                vc.onboardingTwoSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.onboardingTwoSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.onboardingTwoSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
                
                // Onboarding Three (Invisible)
                vc.onboardingThreeBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.onboardingThreeBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 100),
                vc.onboardingThreeBigText.bottomAnchor.constraint(
                    equalTo: vc.onboardingThreeSubText.topAnchor, constant: -24),

                vc.onboardingThreeSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.onboardingThreeSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: vc.view.frame.width + 40),
                vc.onboardingThreeSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
            ]

        case .OnboardingThree:
            return [
                // Onboarding One (Invisible)
                vc.onboardingOneBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.onboardingOneBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.onboardingOneBigText.bottomAnchor.constraint(
                    equalTo: vc.onboardingOneSubText.topAnchor, constant: -24),

                vc.onboardingOneSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.onboardingOneSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.onboardingOneSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),

                // Onboarding Two (Visible)
                vc.onboardingTwoBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.onboardingTwoBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.onboardingTwoBigText.bottomAnchor.constraint(
                    equalTo: vc.onboardingTwoSubText.topAnchor, constant: -24),

                vc.onboardingTwoSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor,
                    constant: -vc.view.frame.width - 16),
                vc.onboardingTwoSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor,
                    constant: -vc.view.frame.width - 32),
                vc.onboardingTwoSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
                
                // Onboarding Three (Invisible)
                vc.onboardingThreeBigText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.onboardingThreeBigText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.onboardingThreeBigText.bottomAnchor.constraint(
                    equalTo: vc.onboardingThreeSubText.topAnchor, constant: -24),

                vc.onboardingThreeSubText.leadingAnchor.constraint(
                    equalTo: vc.view.leadingAnchor, constant: 16),
                vc.onboardingThreeSubText.trailingAnchor.constraint(
                    equalTo: vc.view.trailingAnchor, constant: -16),
                vc.onboardingThreeSubText.bottomAnchor.constraint(
                    equalTo: vc.view.bottomAnchor, constant: -160),
            ]
        }
    }

}
