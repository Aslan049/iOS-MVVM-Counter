//
//  CountViewModel.swift
//  Counter
//
//  Created by Aslan Korkmaz on 20.04.2025.
//

import Foundation
class CountViewModel {
    var model = CountModel()
    
    func increment() {
        model.count += 1
    }
    
    func decrement() {
        model.count -= 1
    }
    
    func clear() {
        model.count = 0
    }
    
    func getCount() -> Int {
        return model.count
    }
}
