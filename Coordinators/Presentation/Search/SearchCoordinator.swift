//
//  SearchCoordinator.swift
//  Coordinators
//
//  Created by Zafar on 3/16/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

protocol SearchFlow: class {
    func coordinateToDetail()
}

class SearchCoordinator: Coordinator, SearchFlow {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let searchViewController = SearchViewController()
        searchViewController.coordinator = self
        
        navigationController.pushViewController(searchViewController, animated: false)
    }
    
    // MARK: - Flow Methods
    func coordinateToDetail() {
        let searchDetailCoordinator = SearchDetailCoordinator(navigationController: navigationController)
        coordinate(to: searchDetailCoordinator)
    }
    
}
