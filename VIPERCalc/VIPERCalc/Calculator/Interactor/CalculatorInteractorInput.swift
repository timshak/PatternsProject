//
//  CalculatorInteractorInput.swift
//  VIPERCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import Foundation

protocol CalculatorInteractorInput {
    
    /// Calculate two numbers
    ///
    /// - Parameters:
    ///   - operation: calculate with operation
    ///   - firstNumber: first number to calculate
    ///   - secondNumber: second number to calculate
    func perform(with operation: Operations, _ firstNumber: Double, _ secondNumber: Double)
    
    /// Calculate with one number
    ///
    /// - Parameters:
    ///   - operation: operation to number
    ///   - number: number to operate
    func perform(with operation: SingleOperations, and number: Double)
    
    
    /// Formatting string for view with comma
    ///
    /// - Parameter number: number to format
    func formatString(from number: Double)
    
}

