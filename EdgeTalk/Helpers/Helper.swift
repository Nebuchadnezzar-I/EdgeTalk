//
//  Helper.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 16/03/2025.
//

import Foundation
import UIKit

class Helper {
    private let onboardingOne = OnboardingOne()
    private let onboardingTwo = OnboardingTwo()
    private let onboardingThree = OnboardingThree()
    private let setupForm = SetupForm()
    private let proposal = Proposal()
    private let setupSettings = SetupSettings()
    private let negotiationCall = NegotiationCall()
    private let feedback = Feedback()
    private let dashboard = Dashboard()

    func createScrollView() -> UIScrollView {
        let view = UIScrollView()
        view.isPagingEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsHorizontalScrollIndicator = false
        view.alwaysBounceHorizontal = true
        return view
    }

    func createScrollViewContainer() -> UIStackView {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }

    func getTargetScene(appScene: AppScene) -> AppScene {
        switch appScene {
        case .OnboaringOne: return AppScene.OnboaringTwo
        case .OnboaringTwo: return AppScene.OnboaringThree
        case .OnboaringThree: return AppScene.SetupForm
        case .SetupForm: return AppScene.Proposal
        case .Proposal: return AppScene.SetupSettings
        case .SetupSettings: return AppScene.NegotiationCall
        case .NegotiationCall: return AppScene.Feedback
        case .Feedback: return AppScene.Dashboard
        case .Dashboard: return AppScene.SetupForm
        }
    }

    func getScene(appScene: AppScene) -> UIView {
        switch appScene {
        case .OnboaringOne: return onboardingOne
        case .OnboaringTwo: return onboardingTwo
        case .OnboaringThree: return onboardingThree
        case .SetupForm: return setupForm
        case .Proposal: return proposal
        case .SetupSettings: return setupSettings
        case .NegotiationCall: return negotiationCall
        case .Feedback: return feedback
        case .Dashboard: return dashboard
        }
    }
}
