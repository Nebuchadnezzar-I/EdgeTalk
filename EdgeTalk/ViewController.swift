//
//  ViewController.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 10/03/2025.
//

import SnapKit
import Then
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let OnboardingFooterView = UIView().then {
            $0.backgroundColor = .black
        }
        
        let LayoutBubbleView = UIView().then {
            $0.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
            $0.backgroundColor = UIColor.clear
        }

        let BigBubbleView = UIView().then {
            $0.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
            $0.layer.cornerRadius = 15
            $0.layer.borderWidth = 1.0
            $0.layer.borderColor = UIColor.white.cgColor.copy(alpha: 0.1)
            $0.clipsToBounds = true
            $0.backgroundColor = UIColor.clear
        }
        
        let MiddleBubbleView = UIView().then {
            $0.frame = CGRect(x: 0, y: 0, width: 14, height: 14)
            $0.layer.cornerRadius = 7
            $0.layer.borderWidth = 1.0
            $0.layer.borderColor = UIColor.white.cgColor.copy(alpha: 0.3)
            $0.clipsToBounds = true
            $0.backgroundColor = UIColor.clear
        }
        
        let CenterBubbleView = UIView().then {
            $0.frame = CGRect(x: 0, y: 0, width: 6, height: 6)
            $0.layer.cornerRadius = 7
            $0.backgroundColor = UIColor.white
        }
        
        LayoutBubbleView.addSubview(BigBubbleView)
        LayoutBubbleView.addSubview(MiddleBubbleView)
        LayoutBubbleView.addSubview(CenterBubbleView)
        
        
        OnboardingFooterView.addSubview(LayoutBubbleView)
        OnboardingFooterView.addSubview(LayoutBubbleView)
        OnboardingFooterView.addSubview(LayoutBubbleView)
        
        view.addSubview(OnboardingFooterView)
        
        BigBubbleView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(30)
        }

        MiddleBubbleView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(14)
        }

        CenterBubbleView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(6)
        }

        let safe = view.safeAreaLayoutGuide.snp
        OnboardingFooterView.snp.makeConstraints { make in
            make.top.equalTo(safe.top).offset(16)
            make.left.equalTo(safe.left).offset(16)
            make.bottom.equalTo(safe.bottom).offset(-16)
            make.right.equalTo(safe.right).offset(-16)
        }

        //        let parentView = UIView().then {
        //            $0.backgroundColor = .black
        //        }
        //
        //        let Onboarding1 = GenerateOnboardingText(
        //            mainText: "Negotiate smart\nWin more deals", mainTextLoC: 2,
        //            subText: "Master the art of persuasion\nwith AI-driven insights and\nreal-world negotiation tactics.", subTextLoC: 3
        //        );
        //
        //        parentView.addSubview(Onboarding1)
        //        view.addSubview(parentView)
        //
        //        let safe = view.safeAreaLayoutGuide.snp
        //        parentView.snp.makeConstraints { make in
        //            make.top.equalTo(safe.top).offset(16)
        //            make.left.equalTo(safe.left).offset(16)
        //            make.bottom.equalTo(safe.bottom).offset(-16)
        //            make.right.equalTo(safe.right).offset(-16)
        //        }
        //
        //        Onboarding1.snp.makeConstraints { make in
        //            make.bottom.equalTo(parentView.snp.bottom).offset(-48)
        //            make.left.equalTo(parentView.snp.left)
        //        }
    }
}
