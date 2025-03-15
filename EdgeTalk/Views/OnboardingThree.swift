//
//  OnboardingThree.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 15/03/2025.
//

import Foundation
import SwiftUI
import UIKit

extension ViewController {
    func OnboardingThreeView() -> UIView {
        let layout = UIView()
        layout.translatesAutoresizingMaskIntoConstraints = false

        let body = VStack(spacing: 20) {
            Spacer()

            Text("Win more deals\nSeal the Terms")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.white)

            Text(
                "Turn pressure into power,\ncontrol every conversation,\nclose deals on your terms."
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 18, weight: .regular))
            .foregroundColor(.white)
        }
        .padding()
        .frame(maxWidth: .infinity)

        let hostingController = UIHostingController(rootView: body)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        hostingController.view.backgroundColor = .clear

        addChild(hostingController)
        layout.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)

        NSLayoutConstraint.activate([
            hostingController.view.topAnchor.constraint(
                equalTo: layout.topAnchor),
            hostingController.view.leadingAnchor.constraint(
                equalTo: layout.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(
                equalTo: layout.trailingAnchor),
            hostingController.view.bottomAnchor.constraint(
                equalTo: layout.bottomAnchor),
        ])

        return layout
    }
}

#Preview {
    ViewController()
        .OnboardingThreeView()
}
