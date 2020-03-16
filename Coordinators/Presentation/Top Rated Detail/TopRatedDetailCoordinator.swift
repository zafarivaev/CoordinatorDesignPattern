//
//  TopRatedDetailCoordinator.swift
//  Coordinators
//
//  Created by Zafar on 3/16/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

protocol TopRatedDetailFlow {
    func dismissDetail()
}

class TopRatedDetailCoordinator: Coordinator, TopRatedDetailFlow {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let topRatedDetailViewController = TopRatedDetailViewController()
        topRatedDetailViewController.coordinator = self
        
        navigationController.present(topRatedDetailViewController, animated: true, completion: nil)
    }
    
    // MARK: - Flow Methods
    func dismissDetail() {
        navigationController.dismiss(animated: true, completion: nil)
    }
}
