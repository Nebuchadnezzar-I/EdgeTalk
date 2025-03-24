//
//  SetupForm.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 24/03/2025.
//

import Foundation
import UIKit

class SetupForm: UIView {
    func makePage() -> UIView {
        let page = UIView()
        page.translatesAutoresizingMaskIntoConstraints = false

        let bigText = UILabel()
        bigText.font = .systemFont(ofSize: 24, weight: .semibold)
        bigText.textColor = .white
        bigText.text = "Your best option\nif deal falls?"
        bigText.numberOfLines = 2
        bigText.translatesAutoresizingMaskIntoConstraints = false

        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .clear
        textView.textColor = .white
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.layer.cornerRadius = 16
        textView.layer.borderWidth = 1
        textView.layer.borderColor =
            UIColor.white.withAlphaComponent(0.1).cgColor
        textView.isScrollEnabled = true
        textView.textContainerInset = UIEdgeInsets(
            top: 12, left: 12, bottom: 12, right: 12)

        page.addSubview(bigText)
        page.addSubview(textView)

        NSLayoutConstraint.activate([
            bigText.topAnchor.constraint(equalTo: page.topAnchor, constant: 80),
            bigText.leadingAnchor.constraint(equalTo: page.leadingAnchor, constant: 16),
            bigText.trailingAnchor.constraint(equalTo: page.trailingAnchor, constant: -16),
            
            textView.topAnchor.constraint(equalTo: bigText.bottomAnchor, constant: 24),
            textView.leadingAnchor.constraint(equalTo: page.leadingAnchor, constant: 16),
            textView.trailingAnchor.constraint(equalTo: page.trailingAnchor, constant: -16),
            textView.bottomAnchor.constraint(equalTo: page.bottomAnchor, constant: -124)
        ])

        return page
    }
}
