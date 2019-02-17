//
//  CalculatorManagerProtocol.swift
//  MVPCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import Foundation

protocol CalculatorManagerProtocol: class {
    
    func perform(with operation: Operations, _ firstNumber: Double, _ secondNumber: Double) -> Double?
    func perform(with operation: SingleOperations, and number: Double) -> Double?
    
}
