//
//  MVPModuleConfigurator.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation
import UIKit

class MVPModuleConfigurator: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        
        configureModule()
    }
    
    func configureModule() {
        
        guard let view = viewController as? MVPViewController else { fatalError() }
        
        let presenter = MVPPresenter()
        let dataManager: DataManagerProtocol = DataManager()
        
        view.presenter = presenter
        
        presenter.view = view 
        presenter.dataManager = dataManager
    }
}
