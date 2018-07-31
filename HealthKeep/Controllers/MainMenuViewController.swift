//
//  FamilyHistoryViewController.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/22/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources


struct MainMenuCard {
    var title: String
    var image: String
    var scene: Scene
}



class MainMenuViewController: UIViewController {
    
    var colView : UICollectionView!
    var viewModel : MainMenuViewModel!
    
    let bag = DisposeBag()
    var router : MainMenuRouter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.layoutCollectionView()
        
        viewModel.dataSource()
            .bind(to: colView.rx.items(cellIdentifier: "MainCell")) { (index, model, cell: MainCell) in
                cell.titleLabel.text = model.title
            }
            .disposed(by: bag)
        
        colView.rx.itemSelected
            .subscribe(onNext: { [unowned self] indexpath in
                self.router.transition(to: self.viewModel.items[indexpath.row].scene)
            })
            .disposed(by: bag)
        
    }
  
}

extension MainMenuViewController {
    
    func layoutCollectionView() {
                
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: (screenWidth/2) - 1, height: (screenHeight/3) - 8)
        layout.minimumInteritemSpacing = 0.5
        layout.minimumLineSpacing = 0.5
        
        colView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        colView.register(MainCell.self, forCellWithReuseIdentifier: "MainCell")
        colView.backgroundColor = UIColor.white
        self.view.addSubview(colView)
    }
    
}

