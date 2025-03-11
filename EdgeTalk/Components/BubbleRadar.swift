//
//  BubbleRadar.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 11/03/2025.
//

import Foundation
import UIKit

func CreateBubbleRadar(idx: UInt8) -> UIView {
    let bubbleLayout = UIView()
    bubbleLayout.translatesAutoresizingMaskIntoConstraints = false

    let bigBubbleView = UIView()
    bigBubbleView.layer.cornerRadius = 15
    bigBubbleView.layer.borderWidth = 1.0
    bigBubbleView.clipsToBounds = true
    bigBubbleView.backgroundColor = .clear
    bigBubbleView.translatesAutoresizingMaskIntoConstraints = false

    let middleBubbleView = UIView()
    middleBubbleView.layer.cornerRadius = 7
    middleBubbleView.layer.borderWidth = 1.0
    middleBubbleView.clipsToBounds = true
    middleBubbleView.backgroundColor = .clear
    middleBubbleView.translatesAutoresizingMaskIntoConstraints = false

    let centerBubbleView = UIView()
    centerBubbleView.layer.cornerRadius = 3
    centerBubbleView.backgroundColor = .white
    centerBubbleView.translatesAutoresizingMaskIntoConstraints = false

    bubbleLayout.addSubview(bigBubbleView)
    bubbleLayout.addSubview(middleBubbleView)
    bubbleLayout.addSubview(centerBubbleView)

    var middleBubbleWidthConstraint: NSLayoutConstraint!
    var middleBubbleHeightConstraint: NSLayoutConstraint!
    var bigBubbleWidthConstraint: NSLayoutConstraint!
    var bigBubbleHeightConstraint: NSLayoutConstraint!

    middleBubbleWidthConstraint = middleBubbleView.widthAnchor.constraint(
        equalToConstant: 14)
    middleBubbleHeightConstraint = middleBubbleView.heightAnchor.constraint(
        equalToConstant: 14)

    bigBubbleWidthConstraint = bigBubbleView.widthAnchor.constraint(
        equalToConstant: 30)
    bigBubbleHeightConstraint = bigBubbleView.heightAnchor.constraint(
        equalToConstant: 30)

    NSLayoutConstraint.activate([
        bubbleLayout.widthAnchor.constraint(equalToConstant: 30),
        bubbleLayout.heightAnchor.constraint(equalToConstant: 30),

        centerBubbleView.centerXAnchor.constraint(
            equalTo: bubbleLayout.centerXAnchor),
        centerBubbleView.centerYAnchor.constraint(
            equalTo: bubbleLayout.centerYAnchor),
        centerBubbleView.widthAnchor.constraint(equalToConstant: 6),
        centerBubbleView.heightAnchor.constraint(equalToConstant: 6),

        middleBubbleView.centerXAnchor.constraint(
            equalTo: bubbleLayout.centerXAnchor),
        middleBubbleView.centerYAnchor.constraint(
            equalTo: bubbleLayout.centerYAnchor),
        middleBubbleWidthConstraint,
        middleBubbleHeightConstraint,

        bigBubbleView.centerXAnchor.constraint(
            equalTo: bubbleLayout.centerXAnchor),
        bigBubbleView.centerYAnchor.constraint(
            equalTo: bubbleLayout.centerYAnchor),
        bigBubbleWidthConstraint,
        bigBubbleHeightConstraint,
    ])

    AppState.shared.subscribeToActiveBubble { activeIndex in
        // Prepare animations with spring
        let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 0.6)
        {
            // Update constraints based on active state
            if activeIndex == idx {
                middleBubbleWidthConstraint.constant = 14
                middleBubbleHeightConstraint.constant = 14
                bigBubbleWidthConstraint.constant = 30
                bigBubbleHeightConstraint.constant = 30

                // Update colors for active state
                bigBubbleView.layer.borderColor =
                    UIColor.white.withAlphaComponent(0.1).cgColor
                middleBubbleView.layer.borderColor =
                    UIColor.white.withAlphaComponent(0.3).cgColor
                centerBubbleView.backgroundColor = .white.withAlphaComponent(
                    1.0)
            } else {
                middleBubbleWidthConstraint.constant = 6
                middleBubbleHeightConstraint.constant = 6
                bigBubbleWidthConstraint.constant = 6
                bigBubbleHeightConstraint.constant = 6

                // Update colors for inactive state
                bigBubbleView.layer.borderColor =
                    UIColor.white.withAlphaComponent(0.0).cgColor
                middleBubbleView.layer.borderColor =
                    UIColor.white.withAlphaComponent(0.0).cgColor
                centerBubbleView.backgroundColor = .white.withAlphaComponent(
                    0.3)
            }

            // Apply layout changes
            bubbleLayout.layoutIfNeeded()
        }

        // Optional: Add a completion block if needed
        animator.addCompletion { position in
            // Anything you want to do after animation completes
        }

        // Start the animation
        animator.startAnimation()
    }

    return bubbleLayout
}
