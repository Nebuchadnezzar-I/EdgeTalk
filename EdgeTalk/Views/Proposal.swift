//
//  Proposal.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 15/03/2025.
//

import Foundation
import SwiftUI
import UIKit

extension ViewController {
    func ProposalView() -> UIView {
        let layout = UIView()
        layout.translatesAutoresizingMaskIntoConstraints = false

        let body = VStack(spacing: 20) {
            Text("Your best option\nif deal falls?")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 24, weight: .semibold))
                .foregroundColor(.white)

            Text(
                "You're negotiating a partnership deal with a key supplier. They’ve made their final offer pricing is locked, and they refuse to budge. The deadline is in 24 hours, and your team is relying on this deal to meet production targets."
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 18, weight: .regular))
            .foregroundColor(.white)

            Text(
                "You know the supplier values long-term relationships. If they lose you now, they risk missing out on future business. But they also know you have limited options. They’re betting on your urgency."
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 18, weight: .regular))
            .foregroundColor(.white)

            Text(
                "Your BATNA is weak—a competitor can supply the materials, but at a higher cost and a delay of two weeks. Walking away isn't ideal, but neither is accepting unfavorable terms. You need leverage."
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 18, weight: .regular))
            .foregroundColor(.white)

            Text(
                "A direct push for better pricing hasn’t worked. You could offer a longer contract in exchange for lower rates or request added benefits like priority delivery. Maybe a creative solution will shift the conversation."
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 18, weight: .regular))
            .foregroundColor(.white)

            Text(
                "Your next move will decide the outcome. Do you apply pressure and risk losing the deal? Do you change tactics and find a win-win? Or do you walk away, hoping they comeback?"
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
        .ProposalView()
}
