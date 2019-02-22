//
//  CalculatorManagerProtocol.swift
//  MVPCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import Foundation

protocol CalculatorManagerProtocol: class {
    
    ///Perform operations for two numbers
    ///
    /// - Parameters:
    ///   - operation: type of operation
    ///   - firstNumber: first number
    ///   - secondNumber: second number
    func perform(with operation: Operations, _ firstNumber: Double, _ secondNumber: Double) -> Double?
    ///Perform operations for one number
    ///   - operation: type of operation
    ///   - number: number
    func perform(with operation: SingleOperations, and number: Double) -> Double?
    
}
