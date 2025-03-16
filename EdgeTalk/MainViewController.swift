//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit

class MainViewController: UIViewController, BottomControlsDelegate {
    private let scrollView = Helper().createScrollView()
    private let scrollStackViewContainer = Helper().createScrollViewContainer()
    private let controls = BottomControls()

    // TODO: Initialize form DB / memory
    private var appScene = AppScene.OnboaringOne

    override func viewDidLoad() {
        super.viewDidLoad()
        controls.delegate = self
        setupScrollView()
    }
}

extension MainViewController {
    func didTapNextButton() {
        let nextScene = Helper().getTargetScene(appScene: appScene)
        appScene = nextScene

        addSceneToView(targetScene: nextScene)

        let currentOffset = scrollView.contentOffset.x
        let nextOffset = CGPoint(
            x: currentOffset + scrollView.frame.width, y: 0)
        scrollView.setContentOffset(nextOffset, animated: true)

        removeSceneFromView(scene: Helper().getScene(appScene: appScene))
    }

    func addSceneToView(targetScene: AppScene) {
        let nextScene = Helper().getScene(appScene: targetScene)
        scrollStackViewContainer.addArrangedSubview(nextScene)

        NSLayoutConstraint.activate([
            nextScene.widthAnchor.constraint(
                equalTo: scrollView.widthAnchor),
            nextScene.heightAnchor.constraint(
                equalTo: scrollView.heightAnchor),
        ])

        view.layoutIfNeeded()
    }

    func removeSceneFromView(scene: UIView) {
        UIView.animate(
            withDuration: 0.3,
            animations: {
                scene.alpha = 0  // Fade out before removal
            }
        ) { _ in
            self.scrollStackViewContainer.removeArrangedSubview(scene)
            scene.removeFromSuperview()
        }
    }

    private func setupScrollView() {
        view.addSubview(scrollView)
        view.addSubview(controls)
        scrollView.addSubview(scrollStackViewContainer)

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64),

            controls.topAnchor.constraint(equalTo: scrollView.bottomAnchor),
            controls.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            controls.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            controls.heightAnchor.constraint(equalToConstant: 64),

            scrollStackViewContainer.leadingAnchor.constraint(
                equalTo: scrollView.leadingAnchor),
            scrollStackViewContainer.trailingAnchor.constraint(
                equalTo: scrollView.trailingAnchor),
            scrollStackViewContainer.topAnchor.constraint(
                equalTo: scrollView.topAnchor),
            scrollStackViewContainer.bottomAnchor.constraint(
                equalTo: scrollView.bottomAnchor),

            scrollStackViewContainer.heightAnchor.constraint(
                equalTo: scrollView.heightAnchor),
        ])

        configureContainerView()
    }

    func configureContainerView() {
        let startupScene = Helper().getScene(appScene: appScene)
        scrollStackViewContainer.addArrangedSubview(startupScene)

        NSLayoutConstraint.activate([
            startupScene.widthAnchor.constraint(
                equalTo: scrollView.widthAnchor),
            startupScene.heightAnchor.constraint(
                equalTo: scrollView.heightAnchor),
        ])
    }
}
