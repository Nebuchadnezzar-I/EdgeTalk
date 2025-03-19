//
//  Helper.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 16/03/2025.
//

import Foundation
import UIKit

class Helper {
    func createScrollView() -> UIScrollView {
        let view = UIScrollView()
        view.isPagingEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsHorizontalScrollIndicator = false
        view.alwaysBounceHorizontal = true
        return view
    }

    func createScrollViewContainer() -> UIStackView {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
