//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

class ViewController: UIViewController {
    private let _buttonController = ButtonController()
    private let _navigationManager = NavigationStateManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

        _navigationManager.delegate = _buttonController
    }

    private func setupUI() {
        view.addSubview(_buttonController)
        _buttonController.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            _buttonController.leadingAnchor.constraint(
                equalTo: view.leadingAnchor),
            _buttonController.trailingAnchor.constraint(
                equalTo: view.trailingAnchor),
            _buttonController.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            _buttonController.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
