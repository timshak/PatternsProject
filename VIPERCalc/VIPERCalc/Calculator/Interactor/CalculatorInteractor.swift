//
//  CalculatorInteractor.swift
//  VIPERCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

class CalculatorInteractor: CalculatorInteractorInput {
    
    weak var presenter: CalculatorInteractorOutput!
    
    private let errorMessage = "Ошибка при выполнении операции"
    
    func perform(with operation: Operations, _ firstNumber: Double, _ secondNumber: Double) {
        var result: Double?
        
        switch operation {
        case .devide: result = firstNumber / secondNumber
        case .minus: result =  firstNumber - secondNumber
        case .multiply: result = firstNumber * secondNumber
        case .plus: result = firstNumber + secondNumber
        }
        
        guard let operationResult = result else {
            presenter.didFinishCalculationFailure(with: .incorrectOperation(errorMessage: errorMessage))
            return
        }
        presenter.didFinishCalculationSuccess(with: operationResult)
    }
    
    func perform(with operation: SingleOperations, and number: Double) {
        var result: Double?
        
        switch operation {
        case .percent: result = number / 100
        case .power: result = number * number
        }
        
        guard let operationResult = result else {
            presenter.didFinishCalculationFailure(with: .incorrectOperation(errorMessage: errorMessage))
            return
        }
        presenter.didFinishCalculationSuccess(with: operationResult)
    }
    
    func formatString(from number: Double) {
        var resultString: String!
        
        let isInteger = number.truncatingRemainder(dividingBy: 1) == 0
        if isInteger {
            let roundedResult = Int(number)
            resultString = String(roundedResult)
        } else {
            resultString = String(number)
            resultString = resultString.replacingOccurrences(of: ".", with: ",")
        }
        
        presenter.didFinishPrepareString(with: resultString)
    }
    
}

