//
//  ScenarioSetup.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 15/03/2025.
//

import Foundation
import SwiftUI
import UIKit

struct ScenarioSetupSwiftUIView: View {
    @State private var text: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            Text("Your best option\nif deal falls?")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 24, weight: .semibold))
                .foregroundColor(.white)

            ZStack {
                TextEditor(text: $text)
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                    .scrollContentBackground(.hidden)
                    .background(Color.clear)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.white.opacity(0.1), lineWidth: 1)
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// Then, use this view in your UIViewController extension
extension ViewController {
    func ScenarioSetupView() -> UIView {
        let layout = UIView()
        layout.translatesAutoresizingMaskIntoConstraints = false

        // Use the SwiftUI view struct we created
        let swiftUIView = ScenarioSetupSwiftUIView()

        let hostingController = UIHostingController(rootView: swiftUIView)
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
        .ScenarioSetupView()
}
