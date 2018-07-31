//
//  AppDelegate.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/21/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
       
        // Override point for customization after application launch.
        let viewModel = OnboardingViewModel()
        let onboardingVC = OnboardingViewController()
        let router = OnboardingRouter()
        router.viewController = onboardingVC
        onboardingVC.router = router
        onboardingVC.viewModel = viewModel
        
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        if UserDefaults.standard.bool(forKey: "isFinished") {
            self.window?.rootViewController = OnboardingRouter.onboardingIsFinished()
        } else {
            self.window?.rootViewController = onboardingVC
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}


}

