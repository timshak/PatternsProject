//
//  CalculatorViewInput.swift
//  MVPCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

protocol CalculatorViewInput: class {
    
     /// Init view
    func setupInitialState()
    
    /// Set text to display
    ///
    /// - Parameter text: digits to display
    func setTextToDigitsLabel(_ text: String)
    
    func showErrorAlert(with message: String)
    
    /// Clear all digits from screen
    func clearPressedOperationButton()
    
}
