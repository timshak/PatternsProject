//
//  CalculatorInteractorOutput.swift
//  VIPERCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import Foundation

protocol CalculatorInteractorOutput: class {
    
    
    /// Calculation finish success
    ///
    /// - Parameter result: calculation result
    func didFinishCalculationSuccess(with result: Double)
    
    
    /// Calculation finish failed
    ///
    /// - Parameter error: calculation result with error
    func didFinishCalculationFailure(with error: CalculatorError)
    
    
    /// Result string after preparing
    ///
    /// - Parameter resultString: prepared string
    func didFinishPrepareString(with resultString: String)
    
}
