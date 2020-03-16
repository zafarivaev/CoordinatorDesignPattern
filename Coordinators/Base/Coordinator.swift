//
//  Coordinator.swift
//  Coordinators
//
//  Created by Zafar on 3/15/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

protocol Coordinator {
    func start()
    func coordinate(to coordinator: Coordinator)
}

extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}
