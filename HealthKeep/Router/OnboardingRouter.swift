//
//  OnboardingRouter.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/24/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import Foundation
import UIKit

class OnboardingRouter {
    
    weak var viewController : OnboardingViewController!
    
    func navigateToMain() {

        let router = MainMenuRouter()
        let mainVC = MainMenuViewController()
        let navigation = UINavigationController(rootViewController: mainVC)
        navigation.navigationBar.prefersLargeTitles = true
        navigation.navigationBar.largeTitleTextAttributes = [ NSAttributedStringKey.foregroundColor: Colors.BLUSH.btm,
                                                              NSAttributedStringKey.font: UIFont(name: "SFCompactDisplay-Semibold", size: 32)
                                                            ]
        navigation.navigationBar.topItem?.title = "Health Keep"
        mainVC.viewModel = MainMenuViewModel()
        mainVC.router = router
        mainVC.router.viewController = mainVC
        viewController.present(navigation, animated: true, completion: nil)
        
    }
    
    class func onboardingIsFinished() -> UINavigationController {
        let router = MainMenuRouter()
        let mainVC = MainMenuViewController()
        let navigation = UINavigationController(rootViewController: mainVC)
        navigation.navigationBar.prefersLargeTitles = true
        navigation.navigationBar.largeTitleTextAttributes = [ NSAttributedStringKey.foregroundColor: Colors.BLUSH.btm,
        NSAttributedStringKey.font: UIFont(name: "SFCompactDisplay-Semibold", size: 32)
        ]
        navigation.navigationBar.topItem?.title = "Health Keep"
        mainVC.viewModel = MainMenuViewModel()
        mainVC.router = router
        mainVC.router.viewController = mainVC
        return navigation
    }
    
}
