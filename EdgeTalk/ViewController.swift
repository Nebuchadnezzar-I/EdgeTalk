//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let parentView = UIView().then {
            $0.backgroundColor = .black
        }
        
        let Onboarding1 = GenerateOnboardingText(
            mainText: "Negotiate smart\nWin more deals", mainTextLoC: 2,
            subText: "Master the art of persuasion\nwith AI-driven insights and\nreal-world negotiation tactics.", subTextLoC: 3
        );
        
        parentView.addSubview(Onboarding1)
        view.addSubview(parentView)
        
        let safe = view.safeAreaLayoutGuide.snp
        parentView.snp.makeConstraints { make in
            make.top.equalTo(safe.top).offset(16)
            make.left.equalTo(safe.left).offset(16)
            make.bottom.equalTo(safe.bottom).offset(-16)
            make.right.equalTo(safe.right).offset(-16)
        }
        
        Onboarding1.snp.makeConstraints { make in
            make.bottom.equalTo(parentView.snp.bottom).offset(-48)
            make.left.equalTo(parentView.snp.left)
        }
    }
}
