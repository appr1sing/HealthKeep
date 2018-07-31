//
//  FamilyHistoryViewController.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/27/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class FamilyHistoryViewController: UIViewController {
    
    var segmentedControl: UISegmentedControl!
    var colView: UICollectionView!
    var pageControl: UIPageControl!
    
    let bag = DisposeBag()
    let data = Variable<[String]>(["","",""])
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupViews()
        
        data.asObservable()
            .bind(to: colView.rx.items(cellIdentifier: "HistoryCell")) { (index, model, cell: HistoryCell) in
                cell.nameLabel.text = "John Appleseed"
                cell.relationLabel.text = "Uncle"
                cell.conditionLabel.text = "Hypertension, Diabetes, Asthma"
            }
            .disposed(by: bag)
        
        data.asObservable()
            .subscribe(onNext: { [weak self] _ in
                self?.pageControl.numberOfPages = (self?.data.value.count)!
                self?.pageControl.reloadInputViews()
            })
            .disposed(by: bag)
        
        colView.rx.itemSelected
            .subscribe(onNext: { [weak self] _ in
                self?.data.value.append("")
            })
            .disposed(by: bag)
        
        colView.rx.contentOffset
            .subscribe({ [unowned self] contentOffset in
                self.pageControl.currentPage = Int(round(self.colView.contentOffset.x / self.colView.frame.size.width))
            })
            .disposed(by: bag)
        
    }

}

// Setup Navigation Bar
extension FamilyHistoryViewController {
    
    func setupViews() {
    
        self.setupNavigationBar()
        self.setupSegmentedControl()
        self.setupCollectionView()
        self.setupPageControl()
    
    }
    
    func setupNavigationBar() {
        
        view.backgroundColor = .white
        self.navigationController?.navigationBar.tintColor = Colors.BLUSH.top
        self.navigationItem.title = "Family Health History"
    
    }
    
    func setupSegmentedControl() {
        
        let items = ["Father's Family", "Mother's Family"]
        segmentedControl = UISegmentedControl(items: items)
        segmentedControl.frame = .zero
        segmentedControl.selectedSegmentIndex = 0
        view.addSubview(segmentedControl)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.heightAnchor.constraint(equalToConstant: 29).isActive = true
        segmentedControl.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        segmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 130.5).isActive = true //126.5
        segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        segmentedControl.backgroundColor = .white
        segmentedControl.tintColor = Colors.BLUSH.btm
        segmentedControl.setTitleTextAttributes([NSAttributedStringKey.font: SFCompact._lightSmall], for: .normal)
    
    }
    
    func setupCollectionView() {
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.6)
        layout.minimumInteritemSpacing = 1.0
        layout.minimumLineSpacing = 1.0
        layout.scrollDirection = .horizontal
        
        colView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        colView.register(HistoryCell.self, forCellWithReuseIdentifier: "HistoryCell")
        
        self.view.addSubview(colView)
        colView.translatesAutoresizingMaskIntoConstraints = false
        colView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 25).isActive = true
        colView.leftAnchor.constraint(equalTo: segmentedControl.leftAnchor).isActive = true
        colView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6).isActive = true
        colView.widthAnchor.constraint(equalTo: segmentedControl.widthAnchor).isActive = true
        colView.backgroundColor = .white
        colView.isPagingEnabled = true
    }
    
    func setupPageControl() {
        
        pageControl = UIPageControl(frame: .zero)
        self.view.addSubview(pageControl)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.topAnchor.constraint(equalTo: colView.bottomAnchor, constant: 25).isActive = true
        pageControl.widthAnchor.constraint(equalTo: colView.widthAnchor, multiplier: 0.5).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 29).isActive = true
        pageControl.backgroundColor = .white
        pageControl.pageIndicatorTintColor = Colors.BLUSH.btm
        pageControl.currentPageIndicatorTintColor = Colors.COCOA_ICE.btm
        
    }
    
}
