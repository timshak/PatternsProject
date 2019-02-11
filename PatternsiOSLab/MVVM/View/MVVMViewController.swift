//
//  MVVMViewController.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class MVVMViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var viewModel: MVVMViewModel? {
        didSet {
            viewModel?.didChangeNameHandler = { [weak self] delegate in
                self?.nameLabel.text = delegate.name
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func didPressedChangeNameButton(_ sender: Any) {
        viewModel?.showName()
    }
}
