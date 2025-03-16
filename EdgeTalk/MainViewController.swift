//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

class MainViewController: UIViewController, BottomControlsDelegate {

    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.isPagingEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsHorizontalScrollIndicator = false
        view.alwaysBounceHorizontal = true
        return view
    }()

    private let scrollStackViewContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let onboardingOne = OnboardingOne()
    private let onboardingTwo = OnboardingTwo()
    private let onboardingThree = OnboardingThree()
    private let setupForm = SetupForm()
    private let proposal = Proposal()
    private let setupSettings = SetupSettings()
    private let negotiationCall = NegotiationCall()
    private let negotiationSMS = NegotiationSMS()
    private let feedback = Feedback()
    private let dashboard = Dashboard()

    private let controls = BottomControls()

    override func viewDidLoad() {
        super.viewDidLoad()
        controls.delegate = self  // **Assign Delegate**
        setupScrollView()
    }

    private func setupScrollView() {
        view.addSubview(scrollView)
        view.addSubview(controls)
        scrollView.addSubview(scrollStackViewContainer)

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64),

            controls.topAnchor.constraint(equalTo: scrollView.bottomAnchor),
            controls.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            controls.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            controls.heightAnchor.constraint(equalToConstant: 64),

            scrollStackViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            scrollStackViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            scrollStackViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollStackViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),

            scrollStackViewContainer.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
        ])

        configureContainerView()
    }

    private func configureContainerView() {
        scrollStackViewContainer.addArrangedSubview(onboardingOne)
        scrollStackViewContainer.addArrangedSubview(onboardingTwo)
        scrollStackViewContainer.addArrangedSubview(onboardingThree)
        scrollStackViewContainer.addArrangedSubview(setupForm)
        scrollStackViewContainer.addArrangedSubview(proposal)
        scrollStackViewContainer.addArrangedSubview(setupSettings)
        scrollStackViewContainer.addArrangedSubview(negotiationCall)
        scrollStackViewContainer.addArrangedSubview(negotiationSMS)
        scrollStackViewContainer.addArrangedSubview(feedback)
        scrollStackViewContainer.addArrangedSubview(dashboard)

        NSLayoutConstraint.activate([
            onboardingOne.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            onboardingTwo.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            onboardingThree.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            setupForm.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            proposal.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            setupSettings.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            negotiationCall.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            negotiationSMS.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            feedback.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            dashboard.widthAnchor.constraint(equalTo: scrollView.widthAnchor),

            onboardingOne.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            onboardingTwo.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            onboardingThree.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            setupForm.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            proposal.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            setupSettings.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            negotiationCall.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            negotiationSMS.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            feedback.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            dashboard.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
        ])
    }

    // **Function to Scroll**
    func scrollToPage(index: Int, animated: Bool = true) {
        let maxIndex = scrollStackViewContainer.arrangedSubviews.count - 1
        let validIndex = max(0, min(index, maxIndex))
        let pageWidth = scrollView.frame.width
        let offset = CGPoint(x: CGFloat(validIndex) * pageWidth, y: 0)
        scrollView.setContentOffset(offset, animated: animated)
    }

    // **Delegate Method Implementation**
    func didTapNextButton() {
        let currentPage = Int(scrollView.contentOffset.x / scrollView.frame.width)
        scrollToPage(index: currentPage + 1)
    }
}
