//
//  AlertsFactoryProtocol.swift
//  VIPERCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import UIKit

protocol AlertsFactoryProtocol: class {
    
    /// Get error alert
    ///
    /// - Parameter message: alert message
    /// - Returns: prepared alert
    func getErrorAlert(with message: String) -> UIViewController
    
}
