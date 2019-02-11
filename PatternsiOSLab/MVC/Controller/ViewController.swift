//
//  ViewController.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var dataManager: DataManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataManager = DataManager()
    }

    @IBAction func didPressedChangeNameButton(_ sender: Any) {
        let names = dataManager.obtainNames()
        nameLabel.text = names.randomElement()
    }
    
}

