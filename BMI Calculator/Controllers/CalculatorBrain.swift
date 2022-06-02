//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Matheus Souza on 4/15/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//


import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float ,_ weight: Float){
        let bmiValue  = weight / pow(height, 2)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Should eat more", color: #colorLiteral(red: 77/255, green: 150/255, blue: 255/255, alpha: 1)  )
        }
        else if  bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "You eat enough", color: #colorLiteral(red: 107/255, green: 203/255, blue: 119/255, alpha: 1))
        }
        
        else  {
            bmi = BMI(value: bmiValue, advice: "Stop eat fatty", color: #colorLiteral(red: 255/255, green: 107/255, blue: 107/255, alpha: 1))
        }
    }
    func getBMIValue () -> String {
        let bmiToString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToString
    }
    func getAdivice() -> String{
        return bmi?.advice ?? "Ops seems like we have a problem..."
    }
    
    func getColor() -> UIColor{
        
        return bmi?.color ?? UIColor.white
    }
}
// underWeight =< 18.5
// normalWeight == 18.5 > 24.9
// overWeight > 25

// if let notNillValue = aPossibleNillValue { return notNillValue }

// let possibleNill: String = "Value" ?? "Value default if nill"

// for Struct that could be nill, we can use    structExemple?.propertyDesired
