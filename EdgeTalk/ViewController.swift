//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let scrollcontainer = createScrollView()
        let onboardingOne = createOnboardingOne()
        let onboardingTwo = createOnboardingTwo()
        let onboardingThree = createOnboardingThree()
        let negotiationForm = createNegotiationForm()
        let mainProposal = createProposal()

        view.addSubview(scrollcontainer)
        scrollcontainer.addSubview(onboardingOne)
        scrollcontainer.addSubview(onboardingTwo)
        scrollcontainer.addSubview(onboardingThree)
        scrollcontainer.addSubview(negotiationForm)
        scrollcontainer.addSubview(mainProposal)

        NSLayoutConstraint.activate([
            // Scroll View
            scrollcontainer.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollcontainer.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollcontainer.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollcontainer.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor),

            // Onboarding One
            onboardingOne.topAnchor.constraint(
                equalTo: scrollcontainer.contentLayoutGuide.topAnchor),
            onboardingOne.bottomAnchor.constraint(
                equalTo: scrollcontainer.contentLayoutGuide.bottomAnchor),
            onboardingOne.leadingAnchor.constraint(
                equalTo: scrollcontainer.contentLayoutGuide.leadingAnchor),

            // Onboarding Two
            onboardingTwo.topAnchor.constraint(
                equalTo: scrollcontainer.contentLayoutGuide.topAnchor),
            onboardingTwo.leadingAnchor.constraint(
                equalTo: onboardingOne.trailingAnchor),

            // Onboarding Three
            onboardingThree.topAnchor.constraint(
                equalTo: scrollcontainer.contentLayoutGuide.topAnchor),
            onboardingThree.leadingAnchor.constraint(
                equalTo: onboardingTwo.trailingAnchor),

            // Negotiation Form
            negotiationForm.topAnchor.constraint(
                equalTo: scrollcontainer.contentLayoutGuide.topAnchor),
            negotiationForm.leadingAnchor.constraint(
                equalTo: onboardingThree.trailingAnchor),

            // Main Proposal
            mainProposal.topAnchor.constraint(
                equalTo: scrollcontainer.contentLayoutGuide.topAnchor),
            mainProposal.leadingAnchor.constraint(
                equalTo: negotiationForm.trailingAnchor),
            mainProposal.trailingAnchor.constraint(
                equalTo: scrollcontainer.contentLayoutGuide.trailingAnchor),

            // Match Heights (to scroll vertically locked, horizontal scrolling only)
            onboardingOne.heightAnchor.constraint(
                equalTo: scrollcontainer.frameLayoutGuide.heightAnchor),
            onboardingTwo.heightAnchor.constraint(
                equalTo: scrollcontainer.frameLayoutGuide.heightAnchor),
            onboardingThree.heightAnchor.constraint(
                equalTo: scrollcontainer.frameLayoutGuide.heightAnchor),
            negotiationForm.heightAnchor.constraint(
                equalTo: scrollcontainer.frameLayoutGuide.heightAnchor),
            mainProposal.heightAnchor.constraint(
                equalTo: scrollcontainer.frameLayoutGuide.heightAnchor),

            // Match widths
            onboardingOne.widthAnchor.constraint(
                equalTo: scrollcontainer.frameLayoutGuide.widthAnchor),
            onboardingTwo.widthAnchor.constraint(
                equalTo: scrollcontainer.frameLayoutGuide.widthAnchor),
            onboardingThree.widthAnchor.constraint(
                equalTo: scrollcontainer.frameLayoutGuide.widthAnchor),
            negotiationForm.widthAnchor.constraint(
                equalTo: scrollcontainer.frameLayoutGuide.widthAnchor),
            mainProposal.widthAnchor.constraint(
                equalTo: scrollcontainer.frameLayoutGuide.widthAnchor),
        ])

    }
}

extension ViewController {
    func createProposal() -> UIView {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false

        let smallText = createSmallText(
            text: "Your best option\nif deal falls?", weight: .bold,
            fontSize: 22)

        let p = createSmallText(
            text:
                """
                You're negotiating a partnership deal with a key supplier. They’ve made their final offer pricing is locked, and they refuse to budge. The deadline is in 24 hours, and your team is relying on this deal to meet production targets.

                You know the supplier values long-term relationships. If they lose you now, they risk missing out on future business. But they also know you have limited options. They’re betting on your urgency.

                Your BATNA is weak—a competitor can supply the materials, but at a higher cost and a delay of two weeks. Walking away isn't ideal, but neither is accepting unfavorable terms. You need leverage.

                A direct push for better pricing hasn’t worked. You could offer a longer contract in exchange for lower rates or request added benefits like priority delivery. Maybe a creative solution will shift the conversation.

                Your next move will decide the outcome. Do you apply pressure and risk losing the deal? Do you change tactics and find a win-win? Or do you walk away, hoping they come back?

                You're negotiating a partnership deal with a key supplier. They’ve made their final offer pricing is locked, and they refuse to budge. The deadline is in 24 hours, and your team is relying on this deal to meet production targets.
                
                You know the supplier values long-term relationships. If they lose you now, they risk missing out on future business. But they also know you have limited options. They’re betting on your urgency.
                
                Your BATNA is weak—a competitor can supply the materials, but at a higher cost and a delay of two weeks. Walking away isn't ideal, but neither is accepting unfavorable terms. You need leverage.
                
                A direct push for better pricing hasn’t worked. You could offer a longer contract in exchange for lower rates or request added benefits like priority delivery. Maybe a creative solution will shift the conversation.
                
                Your next move will decide the outcome. Do you apply pressure and risk losing the deal? Do you change tactics and find a win-win? Or do you walk away, hoping they come back?
                """,
            weight: .regular,
            fontSize: 16, loc: 34)

        v.addSubview(smallText)

        v.addSubview(p)

        NSLayoutConstraint.activate([
            smallText.topAnchor.constraint(equalTo: v.topAnchor, constant: 32),
            smallText.leadingAnchor.constraint(
                equalTo: v.leadingAnchor, constant: 16),
            smallText.trailingAnchor.constraint(
                equalTo: v.trailingAnchor, constant: -16),

            p.topAnchor.constraint(
                equalTo: smallText.bottomAnchor, constant: 16),
            p.leadingAnchor.constraint(equalTo: v.leadingAnchor, constant: 16),
            p.trailingAnchor.constraint(
                equalTo: v.trailingAnchor, constant: -16),
            p.bottomAnchor.constraint(equalTo: v.bottomAnchor, constant: -120)
        ])

        return v
    }

    func createNegotiationForm() -> UIView {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false

        let smallText = createSmallText(
            text: "Your best option\nif deal falls?", weight: .bold,
            fontSize: 22)
        let textInput = createMultilineTextInput(placeholder: "Answer")

        v.addSubview(smallText)
        v.addSubview(textInput)

        NSLayoutConstraint.activate([
            smallText.topAnchor.constraint(equalTo: v.topAnchor, constant: 60),
            smallText.leadingAnchor.constraint(
                equalTo: v.leadingAnchor, constant: 16),
            smallText.trailingAnchor.constraint(
                equalTo: v.trailingAnchor, constant: -16),

            textInput.topAnchor.constraint(
                equalTo: smallText.bottomAnchor, constant: 16),
            textInput.leadingAnchor.constraint(
                equalTo: v.leadingAnchor, constant: 16),
            textInput.trailingAnchor.constraint(
                equalTo: v.trailingAnchor, constant: -16),
            textInput.bottomAnchor.constraint(
                equalTo: v.bottomAnchor, constant: -120),
        ])

        return v
    }

    func createOnboardingOne() -> UIView {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false

        let bigText = createBigText(text: "Master Deals\nSharpen Skills")
        let smallText = createSmallText(
            text:
                "Master negotiations with AI,\nsharpen your strategy today,\nwin deals with confidence."
        )

        v.addSubview(bigText)
        v.addSubview(smallText)

        NSLayoutConstraint.activate([
            smallText.bottomAnchor.constraint(
                equalTo: v.bottomAnchor, constant: -120),
            smallText.leadingAnchor.constraint(
                equalTo: v.leadingAnchor, constant: 16),
            smallText.trailingAnchor.constraint(
                equalTo: v.trailingAnchor, constant: -16),

            bigText.bottomAnchor.constraint(
                equalTo: smallText.topAnchor, constant: -20),
            bigText.leadingAnchor.constraint(
                equalTo: v.leadingAnchor, constant: 16),
            bigText.trailingAnchor.constraint(
                equalTo: v.trailingAnchor, constant: -16),
        ])

        return v
    }

    func createOnboardingTwo() -> UIView {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false

        let bigText = createBigText(text: "Outsmart Them\nStay in Control")
        let smallText = createSmallText(
            text:
                "Understand persuasion tactics,\noutsmart opponents with ease,\nsecure the best outcomes."
        )

        v.addSubview(bigText)
        v.addSubview(smallText)

        NSLayoutConstraint.activate([
            smallText.bottomAnchor.constraint(
                equalTo: v.bottomAnchor, constant: -120),
            smallText.leadingAnchor.constraint(
                equalTo: v.leadingAnchor, constant: 16),
            smallText.trailingAnchor.constraint(
                equalTo: v.trailingAnchor, constant: -16),

            bigText.bottomAnchor.constraint(
                equalTo: smallText.topAnchor, constant: -20),
            bigText.leadingAnchor.constraint(
                equalTo: v.leadingAnchor, constant: 16),
            bigText.trailingAnchor.constraint(
                equalTo: v.trailingAnchor, constant: -16),
        ])

        return v
    }

    func createOnboardingThree() -> UIView {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false

        let bigText = createBigText(text: "Win more deals\nSeal the Terms")
        let smallText = createSmallText(
            text:
                "Turn pressure into power,\ncontrol every conversation,\nclose deals on your terms."
        )

        v.addSubview(bigText)
        v.addSubview(smallText)

        NSLayoutConstraint.activate([
            smallText.bottomAnchor.constraint(
                equalTo: v.bottomAnchor, constant: -120),
            smallText.leadingAnchor.constraint(
                equalTo: v.leadingAnchor, constant: 16),
            smallText.trailingAnchor.constraint(
                equalTo: v.trailingAnchor, constant: -16),

            bigText.bottomAnchor.constraint(
                equalTo: smallText.topAnchor, constant: -20),
            bigText.leadingAnchor.constraint(
                equalTo: v.leadingAnchor, constant: 16),
            bigText.trailingAnchor.constraint(
                equalTo: v.trailingAnchor, constant: -16),
        ])

        return v
    }

    func createBigText(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    func createSmallText(
        text: String, weight: UIFont.Weight = .light, fontSize: CGFloat = 18,
        loc: Int = 3
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.numberOfLines = loc
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    func createScrollView() -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.alwaysBounceHorizontal = true
        scrollView.isPagingEnabled = true
        return scrollView
    }

    func createMultilineTextInput(placeholder: String) -> UITextView {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textView.textColor = .white
        textView.backgroundColor = .clear
        textView.layer.borderColor =
            UIColor.white.withAlphaComponent(0.1).cgColor
        textView.layer.borderWidth = 1
        textView.layer.cornerRadius = 8
        textView.tintColor = .white
        textView.textContainerInset = UIEdgeInsets(
            top: 12, left: 12, bottom: 12, right: 12)

        textView.translatesAutoresizingMaskIntoConstraints = false

        // Placeholder-like behavior
        textView.text = placeholder
        textView.textColor = UIColor.white.withAlphaComponent(0.4)

        return textView
    }

}

class PaddedTextField: UITextField {

    var textPadding = UIEdgeInsets(
        top: 8, left: 12, bottom: 8, right: 12
    )

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
}
