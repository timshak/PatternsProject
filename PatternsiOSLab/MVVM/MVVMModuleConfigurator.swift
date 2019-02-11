//
//  MVVMModuleConfigurator.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation
import UIKit

class MVVMModuleConfigurator: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        
        configureModule()
    }
    
    func configureModule() {
        
        guard let view = viewController as? MVVMViewController else { fatalError() }
        
        let dataManager: DataManagerProtocol = DataManager()
        let viewModel = MVVMViewModel(dataManager: dataManager)
        
        view.viewModel = viewModel
    }
}
