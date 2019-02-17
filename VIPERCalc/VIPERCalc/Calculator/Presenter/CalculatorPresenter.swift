//
//  CalculatorPresenter.swift
//  VIPERCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

class CalculatorPresenter: CalculatorViewOutput, CalculatorInteractorOutput {
    
    weak var view: CalculatorViewInput!
    var interactor: CalculatorInteractorInput!
    var router: CalculatorRouterInput!
    
    private let zeroNumberText = "0"
    private let comma = ","
    
    private var waitingSecondNumber = false
    private var savedFirstNumber: Double?
    private var currentOperation: Operations?
    
    //MARK: - view output
    
    func viewIsReady() {
        view.setupInitialState()
    }
    
    func onNumberButtonClick(with numberTitle: String, and digitsLabelText: String) {
        if digitsLabelText == zeroNumberText {
            view.setTextToDigitsLabel(numberTitle)
        } else if waitingSecondNumber {
            view.setTextToDigitsLabel(numberTitle)
            waitingSecondNumber = false
        } else {
            view.setTextToDigitsLabel(digitsLabelText + numberTitle)
        }
    }
    
    func onCommaButtonClick(with digitsLabelText: String) {
        guard !digitsLabelText.contains(comma) else { return }
        view.setTextToDigitsLabel(digitsLabelText + comma)
    }
    
    func onOperationButtonClick(with operationTitle: String, and digitsLabelText: String) {
        guard let operation = Operations(rawValue: operationTitle) else { return }
        
        waitingSecondNumber = true
        currentOperation = operation
        savedFirstNumber = Double(stringWithComma: digitsLabelText)
    }
    
    func onSingleOperationButtonClick(with operationTitle: String, and digitsLabelText: String) {
        guard let singleOperation = SingleOperations(rawValue: operationTitle),
            let number = Double(stringWithComma: digitsLabelText) else { return }
        
        interactor.perform(with: singleOperation, and: number)
    }
    
    func onClearButtonClick() {
        savedFirstNumber = nil
        waitingSecondNumber = false
        currentOperation = nil
        
        view.setTextToDigitsLabel(zeroNumberText)
        view.clearPressedOperationButton()
    }
    
    func onEqualButtonClick(with digitsLabelText: String) {
        guard let firstNumber = savedFirstNumber,
            let secondNumber = Double(stringWithComma: digitsLabelText),
            let operation = currentOperation else {
                view.clearPressedOperationButton()
                return
        }
        
        waitingSecondNumber = true
        interactor.perform(with: operation, firstNumber, secondNumber)
    }
    
    //MARK: - interactor output
    
    func didFinishCalculationSuccess(with result: Double) {
        interactor.formatString(from: result)
    }
    
    func didFinishCalculationFailure(with error: CalculatorError) {
        switch error {
        case .incorrectOperation(let errorMessage): router.showErrorAlert(with: errorMessage)
        }
    }
    
    func didFinishPrepareString(with resultString: String) {
        view.setTextToDigitsLabel(resultString)
        view.clearPressedOperationButton()
    }
}

