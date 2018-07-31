//
//  Data.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/21/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import Foundation
import paper_onboarding
import UIKit

struct OnboardingData {
    
    static let info = [ OnboardingItemInfo(informationImage: nil,
                                           title: "WELCOME TO",
                                           description: "HEALTH KEEP",
                                           pageIcon: nil,
                                           color: .clear,
                                           titleColor: .white,
                                           descriptionColor: .white,
                                           titleFont: UIFont(name: "SFCompactDisplay-Medium", size: 28)!,
                                           descriptionFont: UIFont(name: "SFProDisplay-Bold", size: 42)!),
                        
                        OnboardingItemInfo(informationImage: nil,
                                           title: "RECORD",
                                           description: "Record your child's personal health history through the first 18 years.",
                                           pageIcon: nil,
                                           color: .clear,
                                           titleColor: .white,
                                           descriptionColor: .white,
                                           titleFont: UIFont(name: "SFProDisplay-Bold", size: 32)!,
                                           descriptionFont: UIFont(name: "SFCompactDisplay-Semibold", size: 20)!),
                        
                        OnboardingItemInfo(informationImage: nil,
                                           title: "DOCUMENT",
                                           description: "Document instructions from doctors and more in this personal health app.",
                                           pageIcon: nil,
                                           color: .clear,
                                           titleColor: .white,
                                           descriptionColor: .white,
                                           titleFont: UIFont(name: "SFProDisplay-Bold", size: 32)!,
                                           descriptionFont: UIFont(name: "SFCompactDisplay-Semibold", size: 20)!),
                        
                        OnboardingItemInfo(informationImage: nil,
                                           title: "TRACK",
                                           description: "Track immunizations, family health history, body measurements, family member's sick & dental visit.",
                                           pageIcon: nil,
                                           color: .clear,
                                           titleColor: .white,
                                           descriptionColor: .white,
                                           titleFont: UIFont(name: "SFProDisplay-Bold", size: 32)!,
                                           descriptionFont: UIFont(name: "SFCompactDisplay-Semibold", size: 20)!) ]
    
}

struct MainMenuCards {
    
    static let items = [MainMenuCard(title: "Family History", image: "", scene: .familyHistory),
                        MainMenuCard(title: "Records", image: "", scene: .record),
                        MainMenuCard(title: "Well Visits", image: "", scene: .wellVisit),
                        MainMenuCard(title: "Sick Visits", image: "", scene: .sickVisit),
                        MainMenuCard(title: "Immunizations", image: "", scene: .immunization),
                        MainMenuCard(title: "Charts", image: "", scene: .chart)]
    
}
