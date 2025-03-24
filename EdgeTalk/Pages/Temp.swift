//
//  Temp.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 24/03/2025.
//

import Foundation
import UIKit

class Temp: UIView {
    func makePage() -> UIView {
        let page = UIView()
        page.backgroundColor = UIColor(
            hue: CGFloat() / 10.0,
            saturation: 0.4,
            brightness: 1.0,
            alpha: 1.0
        )

        let label = UILabel()
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        page.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: page.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: page.centerYAnchor),
        ])
        
        return page
    }
}
