//
//  Temp.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 24/03/2025.
//

import Foundation
import UIKit

class Dashboard: UIView {
    func makePage() -> UIView {
        let page = UIView()

        let label = UILabel()
        label.text = "Dashboard"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        page.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: page.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: page.centerYAnchor),
        ])
        
        return page
    }
}
