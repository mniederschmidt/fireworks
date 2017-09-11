//
//  CountdownViewController.swift
//  Fireworks
//
//  Created by Mary Niederschmidt on 9/10/17.
//  Copyright © 2017 Mary Niederschmidt. All rights reserved.
//

import UIKit

class CountdownViewController: UIViewController, FireworksModelDelegate {
    
    @IBOutlet weak var startTimerButton: UIButton!
    @IBOutlet weak var countDownLabel: UILabel!
    
    private let model = FireworksModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        model.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        countDownLabel.isHidden = true
        countDownLabel.text = String(model.currentCountdownValue)
    }
    
    @IBAction func startTimerButtonPressed(_ sender: UIButton) {
        countDownLabel.isHidden = false
        startTimerButton.isEnabled = false
        model.startTimer()
    }
    
    func timerFinished() {
        startTimerButton.isEnabled = true
        countDownLabel.isHidden = true
        performSegue(withIdentifier: "fireworksSegue", sender: nil)
    }

    func currentCountdownUpdated(with newValue: Int) {
        countDownLabel.text = "\(newValue)"
    }
    
}