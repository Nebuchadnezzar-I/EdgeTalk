//
//  Onboarding.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 14/03/2025.
//

import Foundation
import UIKit

class OnboardingOne: UIViewController {
    let componentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    let bigText: UILabel = {
        let label = UILabel()
        label.text = "Master Deals\nSharpen Skills"
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let smallText: UILabel = {
        let label = UILabel()
        label.text =
            "Master negotiations with AI,\nsharpen your strategy today,\nwin deals with confidence."
        label.numberOfLines = 3
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setupViews() -> UIView {
        view.addSubview(bigText)
        view.addSubview(smallText)

        NSLayoutConstraint.activate([
            smallText.bottomAnchor.constraint(
                equalTo: view.bottomAnchor, constant: -100),
            smallText.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 16),
            smallText.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -16),

            bigText.bottomAnchor.constraint(
                equalTo: smallText.topAnchor, constant: -20),
            bigText.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 16),
            bigText.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -16),
        ])

        return view
    }
}

class OnboardingTwo: UIViewController {
    let componentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    let bigText: UILabel = {
        let label = UILabel()
        label.text = "Outsmart Them\nStay in Control"
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let smallText: UILabel = {
        let label = UILabel()
        label.text =
            "Understand persuasion tactics,\noutsmart opponents with ease,\nsecure the best outcomes."
        label.numberOfLines = 3
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setupViews() -> UIView {
        view.addSubview(bigText)
        view.addSubview(smallText)

        NSLayoutConstraint.activate([
            smallText.bottomAnchor.constraint(
                equalTo: view.bottomAnchor, constant: -100),
            smallText.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 16),
            smallText.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -16),

            bigText.bottomAnchor.constraint(
                equalTo: smallText.topAnchor, constant: -20),
            bigText.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 16),
            bigText.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -16),
        ])

        return view
    }
}

class OnboardingThree: UIViewController {
    let componentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    let bigText: UILabel = {
        let label = UILabel()
        label.text = "Win more deals\nSeal the Terms"
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let smallText: UILabel = {
        let label = UILabel()
        label.text =
            "Turn pressure into power,\ncontrol every conversation,\nclose deals on your terms."
        label.numberOfLines = 3
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setupViews() -> UIView {
        view.addSubview(bigText)
        view.addSubview(smallText)

        NSLayoutConstraint.activate([
            smallText.bottomAnchor.constraint(
                equalTo: view.bottomAnchor, constant: -100),
            smallText.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 16),
            smallText.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -16),

            bigText.bottomAnchor.constraint(
                equalTo: smallText.topAnchor, constant: -20),
            bigText.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 16),
            bigText.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -16),
        ])

        return view
    }
}
