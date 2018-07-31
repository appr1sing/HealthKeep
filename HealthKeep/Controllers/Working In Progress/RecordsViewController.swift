//
//  RecordsViewController.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/27/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import UIKit

class RecordsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupNavigationBar()
    }

   

}

extension RecordsViewController {
    
    func setupNavigationBar() {
        view.backgroundColor = .white
        self.navigationController?.navigationBar.tintColor = Colors.BLUSH.top
        self.navigationItem.title = "Records"
    }
    
}
