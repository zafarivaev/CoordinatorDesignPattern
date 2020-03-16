//
//  HistoryViewController.swift
//  Coordinators
//
//  Created by Zafar on 3/16/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Actions
    @objc func showDetailTapped(_ sender: UIButton) {
        coordinator?.coordinateToDetail()
    }
    
    // MARK: - Properties
    var coordinator: HistoryFlow?
    
    let showDetailButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show detail", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.systemPurple
        button.layer.cornerRadius = 10
        button.layer.shadowRadius = 5
        button.layer.shadowColor = UIColor.purple.cgColor
        button.layer.shadowOpacity = 1.0
        button.layer.shadowOffset = CGSize(width: -1, height: 3)
        button.addTarget(self, action: #selector(showDetailTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
}

// MARK: - UI Setup
extension HistoryViewController {
    private func setupUI() {
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        
        self.view.backgroundColor = .white
        self.view.addSubview(showDetailButton)
        
        NSLayoutConstraint.activate([
            showDetailButton.widthAnchor
                .constraint(equalToConstant: UIScreen.main.bounds.width / 3),
            showDetailButton.heightAnchor
                .constraint(equalToConstant: 50),
            showDetailButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            showDetailButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
}
