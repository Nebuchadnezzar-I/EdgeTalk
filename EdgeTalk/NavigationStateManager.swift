//
//  NavigationStateManager.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 19/03/2025.
//

import Foundation

enum NavigationState {
    case onboardingOne
    case onboardingTwo
    case onboardingThree
    case setupForm
    case dashboard
}

enum TriggerEvent {
    case nextButtonTapped
}

protocol UIUpdateDelegate: AnyObject {
    func updateButtonControls(with state: NavigationState)
    func updateSlideCarousel(with state: NavigationState)
}

extension Notification.Name {
    static let nextButtonTapped = Notification.Name("nextButtonTapped")
}

class NavigationStateManager {
    // TODO: Listen for events
    weak var delegate: UIUpdateDelegate?
    let nc = NotificationCenter.default

    init() {
        print("NavigationStateManager initialized")
        nc.addObserver(
            self, selector: #selector(nextButtonReceived),
            name: .nextButtonTapped, object: nil)
    }

    deinit {
        nc.removeObserver(self)
    }

    @objc private func nextButtonReceived() {
        print("Call: nextButtonReceived")
        handleEvent(event: .nextButtonTapped)
    }

    func handleEvent(event: TriggerEvent) {
        let newState = determineNextState(from: event)

        delegate?.updateButtonControls(with: newState)
        delegate?.updateSlideCarousel(with: newState)
    }

    private func determineNextState(from: TriggerEvent) -> NavigationState {
        .dashboard
    }
}
