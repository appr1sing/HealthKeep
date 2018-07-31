//
//  WellVisitViewController.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/27/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import UIKit

class WellVisitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupNavigationBar()
    }

}

extension WellVisitViewController {
    
    func setupNavigationBar() {
        view.backgroundColor = .white
        self.navigationController?.navigationBar.tintColor = Colors.BLUSH.top
        self.navigationItem.title = "Well Visits"
    }
    
}
