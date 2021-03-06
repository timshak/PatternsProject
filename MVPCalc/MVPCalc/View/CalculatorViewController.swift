//
//  CalculatorViewController.swift
//  MVPCalc
//
//  Created by Тимур Шакиров on 17/02/2019.
//  Copyright © 2019 Тимур Шакиров. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet var operationButtons: [UIButton]!
    @IBOutlet var calculatorButtons: [UIButton]!
    @IBOutlet weak var digitLabel: UILabel!
    
    var presenter: CalculatorViewOutput!
    
    private var pressedOperationButton: UIButton?
    private let backgroundOperationButtonColorNormal = UIColor(red: 234, green: 138, blue: 1)
    
    let errorMessage = "Ошибка"
    let okMessage = "ОК"
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
        
    }
    
    // MARK: - prepare methods
    
    func prepareButtons() {
        calculatorButtons.forEach {
            $0.layer.cornerRadius = $0.frame.size.height / 2
            $0.clipsToBounds = true
        }
    }
    
    // MARK: - buttons click
    
    @IBAction func onOperationButtonClick(_ sender: UIButton) {
        guard let operationTitle = sender.title(for: .normal),
            let digitLabelText = digitLabel.text else { return }
        
        if let pressedButton = pressedOperationButton, pressedButton != sender {
            pressedButton.backgroundColor = backgroundOperationButtonColorNormal
            pressedButton.setTitleColor(.white, for: .normal)
        }
        
        sender.backgroundColor = UIColor.white
        sender.setTitleColor(backgroundOperationButtonColorNormal, for: .normal)
        pressedOperationButton = sender
        
        presenter.onOperationButtonClick(with: operationTitle, and: digitLabelText)
    }
    
    @IBAction func onNumberButtonClick(_ sender: UIButton) {
        guard let buttonTitle = sender.title(for: .normal),
            let digitLabelText = digitLabel.text else { return }
        presenter.onNumberButtonClick(with: buttonTitle, and: digitLabelText)
    }
    
    @IBAction func onCommaButtonClick(_ sender: UIButton) {
        guard let digitLabelText = digitLabel.text else { return }
        presenter.onCommaButtonClick(with: digitLabelText)
    }
    
    @IBAction func onSingleOperationButtonClick(_ sender: UIButton) {
        guard let operationTitle = sender.title(for: .normal),
            let digitLabelText = digitLabel.text else { return }
        presenter.onSingleOperationButtonClick(with: operationTitle, and: digitLabelText)
    }
    
    @IBAction func onClearButtonClick(_ sender: UIButton) {
        presenter.onClearButtonClick()
    }
    
    @IBAction func onEqualButtonClick(_ sender: UIButton) {
        guard let digitLabelText = digitLabel.text else { return }
        presenter.onEqualButtonClick(with: digitLabelText)
    }
    
}

// MARK: CalculatorViewInput
extension CalculatorViewController: CalculatorViewInput {
    
    func setupInitialState() {
        prepareButtons()
    }
    
    func setTextToDigitsLabel(_ text: String) {
        digitLabel.text = text
    }
    
    func showErrorAlert(with message: String) {
        let alert = UIAlertController(title: errorMessage, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: okMessage, style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    func clearPressedOperationButton() {
        guard let pressedButton = pressedOperationButton else { return }
        pressedButton.backgroundColor = backgroundOperationButtonColorNormal
        pressedButton.setTitleColor(.white, for: .normal)
    }
    
}

