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
                if currentValue == "0" {
                    currentValue = buttonText
                } else {
                    currentValue = currentValue + buttonText
                }
            case "C":
                currentValue = "0"
            default:
                print("something else")
            }

            numberDisplay.text = currentValue
        }
    }
}
