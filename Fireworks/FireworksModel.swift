//
//  FireworksModel.swift
//  Fireworks
//
//  Created by Mary Niederschmidt on 9/10/17.
//  Copyright © 2017 Mary Niederschmidt. All rights reserved.
//

import Foundation

protocol FireworksModelDelegate: class {
    func currentCountdownUpdated(with newValue: Int)
    func timerFinished()
}

class FireworksModel {
    
    fileprivate(set) var currentCountdownValue: Int = 10
    weak var delegate: FireworksModelDelegate?
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: timerTriggered(_:))
    }
    
    func timerTriggered(_ timer: Timer) -> Void {
        switch  currentCountdownValue {
        case 2...10:
            currentCountdownValue -= 1
            delegate?.currentCountdownUpdated(with: currentCountdownValue)
            break
        default:
            timer.invalidate()
            currentCountdownValue = 10
            delegate?.timerFinished()
            break
        }
    }
}
