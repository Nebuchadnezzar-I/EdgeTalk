//
//  NForm.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 14/03/2025.
//

import Foundation
import UIKit

class NForm: UIViewController {
    let View: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let headerText: UILabel = {
        let label = UILabel()
        label.text = "Your best option\nif deal falls?"
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let mainTextInput: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Your answer"
        textField.textColor = .white
        textField.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textField.backgroundColor = .systemGray6
        textField.layer.cornerRadius = 8
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }

    func setupViews() -> UIView {
        View.addSubview(headerText)
        View.addSubview(mainTextInput)

        NSLayoutConstraint.activate([
            headerText.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            headerText.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 16),
            headerText.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -16),

            mainTextInput.topAnchor.constraint(
                equalTo: headerText.bottomAnchor, constant: 32),
            mainTextInput.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 16),
            mainTextInput.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -16),
            mainTextInput.bottomAnchor.constraint(
                lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -32),
        ])
        
        return View
    }
}
