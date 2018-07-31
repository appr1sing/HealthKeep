//
//  MainMenuRouter.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/26/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import Foundation
import UIKit

class MainMenuRouter {
    
    weak var viewController : MainMenuViewController!
    
    func transition(to scene: Scene) {
        switch scene {
            case .familyHistory:
                let famHistoryVC = FamilyHistoryViewController()
                viewController.navigationController?.pushViewController(famHistoryVC, animated: true)
            
            case .record:
                let recordVC = RecordsViewController()
                viewController.navigationController?.pushViewController(recordVC, animated: true)
            
            case .wellVisit:
                let wellVisitVC = WellVisitViewController()
                viewController.navigationController?.pushViewController(wellVisitVC, animated: true)
            
            case .sickVisit:
                let sickVisitVC = SickVisitViewController()
                viewController.navigationController?.pushViewController(sickVisitVC, animated: true)
            
            case .immunization:
                let immuVC = ImmunizationViewController()
                viewController.navigationController?.pushViewController(immuVC, animated: true)
            
            case .chart:
                let chartVC = ChartsViewController()
                viewController.navigationController?.pushViewController(chartVC, animated: true)
            
            default: break
        }
        
    }
    
}

