//
//  MainMenuViewModel.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/25/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import Foundation
import RxSwift

class MainMenuViewModel {
    
    let items = MainMenuCards.items
    
    func dataSource() -> Observable<[MainMenuCard]> {
        return Observable.of(items)
    }
    
    
}
