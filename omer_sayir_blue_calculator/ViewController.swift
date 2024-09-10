//
//  ViewController.swift
//  omer_sayir_blue_calculator
//
//  Created by Omer Cagri Sayir on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlets

    @IBOutlet var numberDisplay: UITextField!

    // MARK: - Other variables

    var calculatorModel = Omer_Calculator_Model()
    var startNewNumber = true

    // MARK: - Functions

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Actions

    @IBAction func buttonTouched(_ sender: UIButton) {
        var currentValue = numberDisplay.text!
        if let buttonText = sender.titleLabel?.text {
            switch buttonText {
            case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
                if startNewNumber {
                    currentValue = buttonText
                    startNewNumber = false
                } else {
                    currentValue = currentValue + buttonText
                }
                calculatorModel.updateNumber(Double(currentValue)!)
            case "C":
                currentValue = "0"
                calculatorModel.updateNumber(0)
                startNewNumber = true
            case "+", "-", "X", "/":
                calculatorModel.operation = buttonText
                startNewNumber = true
            case "=":
                currentValue = String(calculatorModel.getResult())
            default:
                calculatorModel.operation = buttonText
            }

            numberDisplay.text = currentValue
        }
    }
}
