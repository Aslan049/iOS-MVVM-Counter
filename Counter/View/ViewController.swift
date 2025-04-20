//
//  ViewController.swift
//  Counter
//
//  Created by Aslan Korkmaz on 20.04.2025.
//

import UIKit

class ViewController: UIViewController {

    let counterView = CounterView()
    let viewModel = CountViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(counterView)
        setupUI()
        counterViewConstraints()
        
        
    }
    
    func counterViewConstraints() {
        view.backgroundColor = .white
        counterView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            counterView.topAnchor.constraint(equalTo: view.topAnchor),
            counterView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            counterView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            counterView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func setupUI() {
        counterView.decreaseButton.addTarget(self, action: #selector(decrease), for: .touchUpInside)
        counterView.increaseButton.addTarget(self, action: #selector(increase), for: .touchUpInside)
        counterView.resetButton.addTarget(self, action: #selector(clear), for: .touchUpInside)
        counterView.countLabel.text = "\(viewModel.getCount())"
    }
    
    @objc func decrease() {
        viewModel.decrement()
        setupUI()
    }
    
    @objc func increase() {
        viewModel.increment()
        setupUI()
    }
    
    @objc func clear() {
        viewModel.clear()
        setupUI()
    }


}

