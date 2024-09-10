//
//  Omer_Calculator_Model.swift
//  omer_sayir_blue_calculator
//
//  Created by Omer Cagri Sayir on 10.09.2024.
//

import Foundation

class Omer_Calculator_Model {
    var firstNumber: Double?
    var secondNumber: Double?
    var operation: String?

    func updateNumber(_ newNumber: Double) {
        if firstNumber == nil {
            firstNumber = newNumber
        } else if operation == nil {
            firstNumber = newNumber
        } else {
            secondNumber = newNumber
        }
    }

    func getResult() -> Double {
        switch operation {
        case "+":
            return (firstNumber ?? 0.0) + (secondNumber ?? 0.0)
        case "-":
            return (firstNumber ?? 0.0) - (secondNumber ?? 0.0)
        case "X":
            return (firstNumber ?? 0.0) * (secondNumber ?? 0.0)
        case "/":
            return (firstNumber ?? 0.0) / (secondNumber ?? 0.0)
        default:
            return 0.0
        }
    }
}
