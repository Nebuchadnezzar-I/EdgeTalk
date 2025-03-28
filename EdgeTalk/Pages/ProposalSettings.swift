//
//  ProposalSettings.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 28/03/2025.
//

import Foundation
import UIKit

class ProposalSettings: UIView {
    func makePage() -> UIView {
        let page = UIView()

        let label = UILabel()
        label.text = "Proposal Settings"
        label.textAlignment = .center
        label.textColor = .white
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
