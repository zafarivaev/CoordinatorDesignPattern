//
//  HistoryCoordinator.swift
//  Coordinators
//
//  Created by Zafar on 3/16/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

protocol HistoryFlow {
    func coordinateToDetail()
}

class HistoryCoordinator: Coordinator, HistoryFlow {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let historyViewController = HistoryViewController()
        historyViewController.coordinator = self
        
        navigationController.pushViewController(historyViewController, animated: false)
    }
    
    // MARK: - Flow Methods
    func coordinateToDetail() {
        let historyDetailCoordinator = HistoryDetailCoordinator(navigationController: navigationController)
        coordinate(to: historyDetailCoordinator)
    }
    
}
