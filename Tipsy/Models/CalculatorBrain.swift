//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Joseph Serrano on 7/22/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    let zeroPercentage: Float = 0.0
    let tenPercentage: Float = 0.1
    let twentyPercentage: Float = 0.2
    
    var stepperCurrentValue: Int = 2
    
    var bill: String = ""
    var pct: Float = 0.0
    
    
    
    
    func getInputBillText() -> Float {
        return (bill as NSString).floatValue
    }
   
    func correctAmount() -> Float {
        return (((pct * getInputBillText() + getInputBillText()) / Float(stepperCurrentValue)) * 100).rounded() / 100
    }
}
