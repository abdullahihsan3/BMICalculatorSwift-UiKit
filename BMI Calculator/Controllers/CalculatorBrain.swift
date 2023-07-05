//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdullah Ihsan on 20/06/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    var bmi: Float?
    
    
    mutating func calculateBmi(height: Float, weight: Float) {
        
        let bmiCalculated = weight / pow(height,2)
        bmi = Float(round(bmiCalculated * 100)/100)
       
    }
    
    func getBMIValue() -> Float? {
        return self.bmi
    }
    
  
    
    
    

}
