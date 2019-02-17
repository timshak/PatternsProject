//
//  CalculatorConfigurator.swift
//  MVPCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import UIKit

class CalculatorConfigurator {
    
    static func setupModule() -> CalculatorViewController {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController() as CalculatorViewController
        let presenter = CalculatorPresenter()
        let manager = CalculatorManager()
        
        viewController.presenter = presenter
        
        presenter.view = viewController
        presenter.calculatorManager = manager
        
        return viewController
    }
    
}
