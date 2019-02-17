//
//  CalculatorRouter.swift
//  VIPERCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import UIKit

class CalculatorRouter: CalculatorRouterInput {
    
    weak var view: UIViewController!
    var alertsFactory: AlertsFactoryProtocol!
    
    func showErrorAlert(with message: String) {
        let errorAlert = alertsFactory.getErrorAlert(with: message)
        view.present(errorAlert, animated: true, completion: nil)
    }
    
}

