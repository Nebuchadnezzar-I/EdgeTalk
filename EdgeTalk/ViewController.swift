//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

class ViewController: UIViewController {
    let ScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()

    let ContentView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    let OnboardingOneView = OnboardingOne().setupViews()
    let OnboardingTwoView = OnboardingTwo().setupViews()
    let OnboardingThreeView = OnboardingThree().setupViews()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(ScrollView)
        ScrollView.addSubview(ContentView)
        
        ContentView.addArrangedSubview(OnboardingOneView)
        ContentView.addArrangedSubview(OnboardingTwoView)
        ContentView.addArrangedSubview(OnboardingThreeView)

        NSLayoutConstraint.activate([
            ScrollView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            ScrollView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ScrollView.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            ScrollView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor),

            ContentView.topAnchor.constraint(equalTo: ScrollView.topAnchor),
            ContentView.leadingAnchor.constraint(
                equalTo: ScrollView.leadingAnchor),
            ContentView.trailingAnchor.constraint(
                equalTo: ScrollView.trailingAnchor),
            ContentView.bottomAnchor.constraint(
                equalTo: ScrollView.bottomAnchor),

            ContentView.heightAnchor.constraint(
                equalTo: ScrollView.heightAnchor),
            ContentView.widthAnchor.constraint(
                equalTo: ScrollView.widthAnchor, multiplier: 3),

            OnboardingOneView.widthAnchor.constraint(
                equalTo: ScrollView.widthAnchor),
            OnboardingTwoView.widthAnchor.constraint(
                equalTo: ScrollView.widthAnchor),
            OnboardingThreeView.widthAnchor.constraint(
                equalTo: ScrollView.widthAnchor),
        ])
    }
}
