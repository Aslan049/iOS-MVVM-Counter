//
//  CounterView.swift
//  Counter
//
//  Created by Aslan Korkmaz on 20.04.2025.
//

import Foundation
import UIKit

class CounterView: UIView {
    
    let countView = CountViewModel()
    
    lazy var countLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 72, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    lazy var increaseButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .light)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 3
        return button
    }()
    
    lazy var decreaseButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .light)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 3
        return button
    }()
    
    lazy var resetButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Clear", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .light)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 3
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
 
    private func setupUI() {
        
        addSubview(countLabel)
        addSubview(decreaseButton)
        addSubview(increaseButton)
        addSubview(resetButton)
        
        NSLayoutConstraint.activate([
            countLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            countLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30),
            countLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            countLabel.widthAnchor.constraint(equalToConstant: 300),
            
            
            decreaseButton.topAnchor.constraint(equalTo: countLabel.bottomAnchor, constant: 30),
            decreaseButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            decreaseButton.widthAnchor.constraint(equalToConstant: 75),
            decreaseButton.heightAnchor.constraint(equalToConstant: 75),
           
            
            increaseButton.topAnchor.constraint(equalTo: countLabel.bottomAnchor, constant: 30),
            increaseButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            increaseButton.widthAnchor.constraint(equalToConstant: 75),
            increaseButton.heightAnchor.constraint(equalToConstant: 75),
            
            resetButton.topAnchor.constraint(equalTo: decreaseButton.bottomAnchor, constant: 20),
            resetButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resetButton.widthAnchor.constraint(equalToConstant: 150),
            resetButton.heightAnchor.constraint(equalToConstant: 100)
            
            
            
        ])
    }
    
}
