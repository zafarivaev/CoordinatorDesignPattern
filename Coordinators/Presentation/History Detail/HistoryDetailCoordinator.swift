//
//  HistoryDetailCoordinator.swift
//  Coordinators
//
//  Created by Zafar on 3/16/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

protocol HistoryDetailFlow {
    func dismissDetail()
}

class HistoryDetailCoordinator: Coordinator, HistoryDetailFlow {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let historyDetailViewController = HistoryDetailViewController()
        historyDetailViewController.coordinator = self
        
        navigationController.present(historyDetailViewController, animated: true, completion: nil)
    }
    
    // MARK: - Flow Methods
    func dismissDetail() {
        navigationController.dismiss(animated: true, completion: nil)
    }
}
