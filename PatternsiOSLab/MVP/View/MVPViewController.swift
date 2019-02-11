//
//  MVPViewController.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class MVPViewController: UIViewController, MVPViewInput {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var presenter: MVPViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.setupInitialState()
    }
    
    func showName(_ name: String?) {
        nameLabel.text = name
    }

    @IBAction func didPressedChangeNameButton(_ sender: Any) {
       presenter.didPressedChangeNameButton()
    }
}
