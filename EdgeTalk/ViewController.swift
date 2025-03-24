//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

enum Pages {
    case OnboardingOne
    case OnboardingTwo
    case OnboardingThree
    case SetupFrom
    case ProposalReview
    case ProposalSettings
    case NegotiationCall
    case NegotiationSMS
    case NegotiationReview
    case Dashboard
}

class ViewController: UIViewController {
    // Get from DB
    private var currentPage = Pages.OnboardingOne

    private var isCooldown = false
    private var nextPageIndex: Int = 0
    private let totalPages: Int = 10

    private let mainButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(
            red: 0, green: 122 / 255, blue: 1, alpha: 1)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let scrollView = UIScrollView()
    private let contentView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black

        view.addSubview(mainButton)

        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.axis = .horizontal
        contentView.distribution = .fillEqually

        scrollView.alwaysBounceVertical = false
        scrollView.alwaysBounceHorizontal = true
        scrollView.bounces = false
        scrollView.bouncesZoom = false
        scrollView.contentInsetAdjustmentBehavior = .never

        view.addSubview(scrollView)

        contentView.axis = .horizontal
        contentView.distribution = .fillEqually
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)

        view.bringSubviewToFront(mainButton)

        mainButton.addTarget(
            self, action: #selector(nextPage), for: .touchUpInside)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(
                equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(
                equalTo: view.bottomAnchor),

            contentView.topAnchor.constraint(
                equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(
                equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(
                equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(
                equalTo: scrollView.trailingAnchor),

            mainButton.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -40),
            mainButton.bottomAnchor.constraint(
                equalTo: view.bottomAnchor, constant: -40),
            mainButton.heightAnchor.constraint(equalToConstant: 56),
            mainButton.widthAnchor.constraint(equalToConstant: 120),
        ])

        nextPage()
    }
}

extension ViewController {
    @objc private func nextPage() {
        guard !isCooldown else { return }
        isCooldown = true

        addPage()
        view.layoutIfNeeded()
        let xOffset = CGFloat(nextPageIndex) * scrollView.frame.width

        UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseInOut])
        {
            self.scrollView.contentOffset = CGPoint(x: xOffset, y: 0)
        }

        nextPageIndex += 1

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            self.isCooldown = false
        }
        getNextPage()
    }

    private func addPage() {
        var page: UIView!

        if currentPage == .OnboardingOne {
            page = OnboardingOnePage().makePage()
        } else if currentPage == .OnboardingTwo {
            page = OnboardingTwoPage().makePage()
        } else if currentPage == .OnboardingThree {
            page = OnboardingThreePage().makePage()
        } else if currentPage == .SetupFrom {
            page = SetupForm().makePage()
        } else {
            page = Temp().makePage()
        }

        page.translatesAutoresizingMaskIntoConstraints = false
        contentView.addArrangedSubview(page)

        NSLayoutConstraint.activate([
            page.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            page.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
        ])
    }

    private func getNextPage() {
        switch currentPage {
        case .OnboardingOne:
            currentPage = .OnboardingTwo
        case .OnboardingTwo:
            currentPage = .OnboardingThree
        case .OnboardingThree:
            currentPage = .SetupFrom
        case .SetupFrom:
            currentPage = .ProposalReview
        case .ProposalReview:
            currentPage = .ProposalSettings
        case .ProposalSettings:
            currentPage = .NegotiationCall
        case .NegotiationCall:
            currentPage = .NegotiationReview
        case .NegotiationSMS: break
        case .NegotiationReview:
            currentPage = .Dashboard
        case .Dashboard:
            currentPage = .SetupFrom
        }
    }

    private func getPageContent() -> String {
        switch currentPage {
        case .OnboardingOne:
            "OnboardingOne"
        case .OnboardingTwo:
            "OnboardingTwo"
        case .OnboardingThree:
            "OnboardingThree"
        case .SetupFrom:
            "SetupFrom"
        case .ProposalReview:
            "ProposalReview"
        case .ProposalSettings:
            "ProposalSettings"
        case .NegotiationCall:
            "NegotiationCall"
        case .NegotiationSMS:
            "NegotiationSMS"
        case .NegotiationReview:
            "NegotiationReview"
        case .Dashboard:
            "Dashboard"
        }
    }
}
