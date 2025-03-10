//
//  Onboarding.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import Foundation
import SnapKit
import Then
import UIKit

func GenerateOnboardingText(
    mainText: String, mainTextLoC: Int,
    subText: String, subTextLoC: Int
) -> UIView {
    let container = UIView();

    let bigText = UILabel().then {
        $0.text = mainText
        $0.numberOfLines = mainTextLoC
        $0.font = .systemFont(ofSize: 40, weight: .bold)
        $0.textColor = .white
    }

    let smallText = UILabel().then {
        $0.text = subText
        $0.numberOfLines = subTextLoC
        $0.font = .systemFont(ofSize: 16, weight: .regular)
        $0.textColor = .white
    }
    
    container.addSubview(bigText)
    container.addSubview(smallText)
    
    bigText.snp.makeConstraints { make in
        make.top.equalToSuperview()
        make.left.equalToSuperview()
        make.right.equalToSuperview()
    }
    
    smallText.snp.makeConstraints { make in
        make.top.equalTo(bigText.snp.bottom).offset(20)
        make.left.equalToSuperview()
        make.right.equalToSuperview()
        make.bottom.equalToSuperview()
    }
    
    return container
}
