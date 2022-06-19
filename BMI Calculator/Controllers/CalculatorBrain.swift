//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Arshaan Sayed on 6/18/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
     func getBmi() -> String {
         return String(format: "%.1f",bmi?.value ?? 0.0)
       
            
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "I dunno"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .black
    }

    
    mutating func calcBmi(weight: Int, height: Int) {
        let bVal =  Float(weight * 703) / Float(height * height)
        let adv: String?
        let color: UIColor
        let blue = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        let green = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        let red = #colorLiteral(red: 0.6093683243, green: 0.1109355912, blue: 0.1188096926, alpha: 1)
            
        switch bVal {
        case _ where bVal < 18.5: adv = "Go to McDonalds more"; color = blue
        case _ where bVal < 24.9: adv = "You're fine but stay aware"; color = green
        default: adv = "Hit the gym and start a diet"; color = red
        }
        bmi = BMI(value: bVal, advice: adv ?? "I dunno", color: color )
          
   }
    
    
    
}
