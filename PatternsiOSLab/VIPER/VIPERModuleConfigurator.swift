//
//  VIPERModuleConfigurator.swift
//  PatternsiOSLab
//
//  Created by Ильдар Залялов on 11/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation
import UIKit

class VIPERModuleConfigurator: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        
        configureModule()
    }
    
    func configureModule() {
        
        guard let view = viewController as? VIPERViewController else { fatalError() }
        
        let presenter = VIPERPresenter()
        let interactor = VIPERInteractor()
        let router = VIPERRouter()
        let dataManager: DataManagerProtocol = DataManager()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        interactor.dataManager = dataManager
        
        router.view = view
    }
}
