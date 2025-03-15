//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

class MainViewController: UIViewController {
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

    private let subView1 = OnboardingOne()
    private let subview2 = OnboardingTwo()
    private let subview3 = OnboardingThree()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
    }

    private func setupScrollView() {
        view.addSubview(scrollView)
        scrollView.addSubview(scrollStackViewContainer)

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),

            scrollStackViewContainer.leadingAnchor.constraint(
                equalTo: scrollView.leadingAnchor),
            scrollStackViewContainer.trailingAnchor.constraint(
                equalTo: scrollView.trailingAnchor),
            scrollStackViewContainer.topAnchor.constraint(
                equalTo: scrollView.topAnchor),
            scrollStackViewContainer.bottomAnchor.constraint(
                equalTo: scrollView.bottomAnchor),

            scrollStackViewContainer.heightAnchor.constraint(
                equalTo: scrollView.heightAnchor),
        ])

        configureContainerView()
    }

    private func configureContainerView() {
        scrollStackViewContainer.addArrangedSubview(subView1)
        scrollStackViewContainer.addArrangedSubview(subview2)
        scrollStackViewContainer.addArrangedSubview(subview3)

        NSLayoutConstraint.activate([
            subView1.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            subview2.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            subview3.widthAnchor.constraint(equalTo: scrollView.widthAnchor),

            subView1.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            subview2.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            subview3.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
        ])
    }
}
