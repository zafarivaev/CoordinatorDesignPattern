//
//  StartViewController.swift
//  Coordinators
//
//  Created by Zafar on 3/15/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Actions
    @objc func startTapped(_ sender: UIButton) {
        coordinator?.coordinateToTabBar()
    }
    
    // MARK: - Properties
    var coordinator: StartFlow?
    
    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.layer.cornerRadius = 10
        button.layer.shadowRadius = 5
        button.layer.shadowColor = UIColor.systemTeal.cgColor
        button.layer.shadowOpacity = 1.0
        button.layer.shadowOffset = CGSize(width: -1, height: 3)
        button.addTarget(self, action: #selector(startTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
}

// MARK: - UI Setup
extension StartViewController {
    private func setupUI() {
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        self.view.backgroundColor = .white
        self.view.addSubview(startButton)
        
        NSLayoutConstraint.activate([
            startButton.widthAnchor
                .constraint(equalToConstant: UIScreen.main.bounds.width / 3),
            startButton.heightAnchor
                .constraint(equalToConstant: 50),
            startButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
}
