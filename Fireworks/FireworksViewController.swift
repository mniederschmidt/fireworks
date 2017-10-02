//
//  FireworksViewController.swift
//  Fireworks
//
//  Created by Mary Niederschmidt on 10/2/17.
//  Copyright © 2017 Mary Niederschmidt. All rights reserved.
//

import UIKit

class FireworksViewController: UIViewController {
    
    @IBOutlet var fireworks: [UIActivityIndicatorView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // same as next forEach statement
//        for view in fireworks {
//            view.startAnimating()
//        }
        
        fireworks.forEach { (view) in
            view.startAnimating()
            view.color = UIColor.random
        }
    }

}
