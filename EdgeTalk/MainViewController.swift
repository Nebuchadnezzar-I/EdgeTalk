//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

extension Notification.Name {
    // Button triggers
    static let nextButtonTriggered = Notification.Name("nextButtonTriggered")
    static let prevButtonTriggered = Notification.Name("prevButtonTrigger")
    static let setupButtonTriggered = Notification.Name("setupButtonTrigger")

    // Code triggers
    static let handleNextButtonStateChange = Notification.Name(
        "handleNextButtonStateChange")
}

class MainViewController: UIViewController {
    let center = NotificationCenter.default

    // TODO: Get initial state from DB
    private var _currentState: AppScene = .OnboaringOne
    private let _controls = BottomControls()
    private let _scrollView = Helper().createScrollView()
    private let _scrollStackViewContainer = Helper().createScrollViewContainer()

    // Scenes
    let onboardingOne = OnboardingOne()
    let onboardingTwo = OnboardingTwo()
    let onboardingThree = OnboardingThree()
    let setupForm = SetupForm()
    let proposal = Proposal()
    let setupSettings = SetupSettings()
    let negotiationCall = NegotiationCall()
    let feedback = Feedback()
    let dashboard = Dashboard()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupEvenHandlers()
        setupUI()
    }
}

extension MainViewController {
    // Updates state, issues new event
    @objc func handleNextButton() {
        switch _currentState {
        case .OnboaringOne:
            _currentState = .OnboaringTwo
        case .OnboaringTwo:
            _currentState = .OnboaringThree
        case .OnboaringThree:
            _currentState = .SetupForm

        // From dashboard
        case .SetupForm:
            _currentState = .Proposal
        case .Proposal:
            _currentState = .SetupSettings
        case .SetupSettings:
            _currentState = .NegotiationCall
        case .NegotiationCall:
            _currentState = .Feedback
        case .Feedback:
            _currentState = .Dashboard
        case .Dashboard:
            _currentState = .SetupForm
        }

        NotificationCenter.default.post(
            name: .handleNextButtonStateChange, object: nil)
    }

    // Updates state, issues new event
    @objc func handlePrevButton() {
        print("handlePrevButton")
    }

    // Updates state, issues new event
    @objc func handleSetupButton() {
        print("handleSetupButton")
    }

    func setupEvenHandlers() {
        // Only controls for now
        // Button triggers
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handleNextButton),
            name: .nextButtonTriggered,
            object: nil)

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handlePrevButton),
            name: .prevButtonTriggered,
            object: nil)

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handleSetupButton),
            name: .setupButtonTriggered,
            object: nil)

        // Code triggers
    }

    func setupUI() {
        // Only controls for now
        // Use _currentState to render first scene in carousel
        view.addSubview(_controls)
        view.addSubview(_scrollView)
        _scrollView.addSubview(_scrollStackViewContainer)

        NSLayoutConstraint.activate([
            _controls.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32),
            _controls.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            _controls.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            _controls.heightAnchor.constraint(equalToConstant: 64),

            _scrollView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            _scrollView.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            _scrollView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            _scrollView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64),

            _scrollStackViewContainer.leadingAnchor.constraint(
                equalTo: _scrollView.leadingAnchor),
            _scrollStackViewContainer.trailingAnchor.constraint(
                equalTo: _scrollView.trailingAnchor),
            _scrollStackViewContainer.topAnchor.constraint(
                equalTo: _scrollView.topAnchor),
            _scrollStackViewContainer.bottomAnchor.constraint(
                equalTo: _scrollView.bottomAnchor),
            _scrollStackViewContainer.heightAnchor.constraint(
                equalTo: _scrollView.heightAnchor),
        ])

        _scrollStackViewContainer.addArrangedSubview(onboardingOne)

        NSLayoutConstraint.activate([
            onboardingOne.widthAnchor.constraint(
                equalTo: _scrollView.widthAnchor),
            onboardingOne.heightAnchor.constraint(
                equalTo: _scrollView.heightAnchor),
        ])
    }
}
