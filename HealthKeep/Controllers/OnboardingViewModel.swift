//
//  OnboardingViewModel.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/21/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import Foundation
import paper_onboarding
import RxSwift
import Action

class OnboardingViewModel {
    
    let isFinished = Variable(false)
    
    func setOnboardingDetails(at index: Int) -> OnboardingItemInfo {
        return OnboardingData.info[index]
    }
   
    func numOfItems() -> Int {
        return OnboardingData.info.count
    }
    
    func store(_ bool: Bool) {
        UserDefaults.standard.set(true, forKey: "isFinished")
    }
    
}


