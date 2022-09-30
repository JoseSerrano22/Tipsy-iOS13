//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet var billTextField: UITextField!
    @IBOutlet var zeroPctButton: UIButton!
    @IBOutlet var tenPctButton: UIButton!
    @IBOutlet var twentyPctButton: UIButton!
    @IBOutlet var splitNumberLabel: UILabel!
    @IBOutlet var stepper: UIStepper!
    
    
    var calculatorBrain = CalculatorBrain()
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            
            if sender == zeroPctButton {
                tenPctButton.isSelected = true
                twentyPctButton.isSelected = true
                
            }
            
            if sender == tenPctButton {
                zeroPctButton.isSelected = true
                twentyPctButton.isSelected = true
                
            }
            
            if sender == twentyPctButton {
                tenPctButton.isSelected = true
                zeroPctButton.isSelected = true
                
            }
            
            
        } else {
            sender.isSelected = true
            
            if sender == zeroPctButton {
                tenPctButton.isSelected = false
                twentyPctButton.isSelected = false
                
            }
            
            if sender == tenPctButton {
                zeroPctButton.isSelected = false
                twentyPctButton.isSelected = false
                
            }
            
            if sender == twentyPctButton {
                tenPctButton.isSelected = false
                zeroPctButton.isSelected = false
                
            }
            
        }
        
        
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        calculatorBrain.stepperCurrentValue = Int(sender.value)
        splitNumberLabel.text = String(calculatorBrain.stepperCurrentValue)
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        calculatorBrain.bill = billTextField.text ?? "0.0"
        
        
        if zeroPctButton.isSelected {
            calculatorBrain.pct = (calculatorBrain.zeroPercentage)
        } else if tenPctButton.isSelected {
            calculatorBrain.pct = (calculatorBrain.tenPercentage)
        } else if twentyPctButton.isSelected {
            calculatorBrain.pct = (calculatorBrain.twentyPercentage)
        }
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
             let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.totalBill = String(calculatorBrain.correctAmount())
            destinationVC.settingDetails = "Split between \(calculatorBrain.stepperCurrentValue) people, with \(calculatorBrain.pct)% tip."
            
        }
    }
    
    
    
    
    
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //        // Do any additional setup after loading the view.
    //    }
    
    
}

