//
//  ViewController.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/21/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import UIKit
import paper_onboarding
import RxSwift
import RxCocoa
import Action


final class OnboardingViewController: UIViewController {
    
    let onboarding = PaperOnboarding()
    var skipBtn = UIButton()
    
    let bag = DisposeBag()
    var router : OnboardingRouter!
    var viewModel : OnboardingViewModel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupOnboardingViews()
        
        skipBtn.rx.tap
            .bind { [weak self] _ in
                self?.router.navigateToMain()
            }
            .disposed(by: bag)
        
        viewModel.isFinished.asObservable()
            .distinctUntilChanged()
            .subscribe { [weak self] success in
                self?.viewModel.store(success.element!)
            }
            .disposed(by: bag)
        
    }
    
}

// Layout Views
extension OnboardingViewController {
    
    func setupOnboardingViews() {
        
        onboarding.dataSource = self
        onboarding.delegate = self
        onboarding.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(onboarding)
        
        // add constraints
        for attribute: NSLayoutAttribute in [.left, .right, .top, .bottom] {
            let constraint = NSLayoutConstraint(item: onboarding,
                                                attribute: attribute,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: attribute,
                                                multiplier: 1,
                                                constant: 0)
            view.addConstraint(constraint)
        }
        
        let gradient = Gradient(top: Colors.BLUSH.top, btm: Colors.BLUSH.btm)
        view.applyGradient(with: gradient)
        self.setupSkipBtn()
    }
    
    func setupSkipBtn () {
        
        view.addSubview(skipBtn)
        skipBtn.translatesAutoresizingMaskIntoConstraints = false
        skipBtn.heightAnchor.constraint(equalToConstant: 29).isActive = true
        skipBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        skipBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 28).isActive = true
        skipBtn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        
        skipBtn.setTitle("Skip", for: .normal)
        skipBtn.setTitleColor(UIColor.white.withAlphaComponent(0.4), for: .normal)
        skipBtn.titleLabel?.font = UIFont(name: "SFCompactText-Semibold", size: 22)!
        skipBtn.alpha = 0
    }
    
}

extension OnboardingViewController : PaperOnboardingDataSource, PaperOnboardingDelegate {
    
    func onboardingItemsCount() -> Int {
        return viewModel.numOfItems()
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        return viewModel.setOnboardingDetails(at: index)
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        
        if index == viewModel.numOfItems() - 1 {
            let animator = UIViewPropertyAnimator(duration: 0.3, dampingRatio: 0.3, animations: {
                self.skipBtn.alpha = 1
                self.skipBtn.transform = CGAffineTransform(translationX: 0, y: +10)
            })
            animator.startAnimation()
            viewModel.isFinished.value = true
        }
    }
    
}

