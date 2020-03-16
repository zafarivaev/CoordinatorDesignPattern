//
//  TopRatedDetailViewController.swift
//  Coordinators
//
//  Created by Zafar on 3/16/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

class TopRatedDetailViewController: UIViewController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Actions
    @objc func dismissDetailTapped(_ sender: UIButton) {
        coordinator?.dismissDetail()
    }
    
    // MARK: - Properties
    var coordinator: TopRatedDetailFlow?
    
    let dismissDetailButton: UIButton = {
        let button = UIButton()
        button.setTitle("Dismiss detail", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.systemGray
        button.layer.cornerRadius = 10
        button.layer.shadowRadius = 5
        button.layer.shadowColor = UIColor.gray.cgColor
        button.layer.shadowOpacity = 1.0
        button.layer.shadowOffset = CGSize(width: -1, height: 3)
        button.addTarget(self, action: #selector(dismissDetailTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
}

// MARK: - UI Setup
extension TopRatedDetailViewController {
    private func setupUI() {
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        self.view.backgroundColor = .white
        self.view.addSubview(dismissDetailButton)
        
        NSLayoutConstraint.activate([
            dismissDetailButton.widthAnchor
                .constraint(equalToConstant: UIScreen.main.bounds.width / 3),
            dismissDetailButton.heightAnchor
                .constraint(equalToConstant: 50),
            dismissDetailButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            dismissDetailButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
}


