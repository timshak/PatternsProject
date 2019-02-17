//
//  CalculatorConfigurator.swift
//  VIPERCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import UIKit

class CalculatorModuleConfigurator {
    
    static func setupModule() -> CalculatorViewController {
        let viewController: CalculatorViewController = UIStoryboard(storyboard: .main).instantiateViewController()
        let alertsFactory = AlertsFactory()
        let presenter = CalculatorPresenter()
        let router = CalculatorRouter()
        let interactor = CalculatorInteractor()
        
        viewController.presenter = presenter
        
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        
        router.view = viewController
        router.alertsFactory = alertsFactory
        
        interactor.presenter = presenter
        
        return viewController
    }
    
}

