//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Joseph Serrano on 7/22/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var totalBill: String?
    var settingDetails: String?
    
    
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var settingsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalBill
        settingsLabel.text = settingDetails
        
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
         self.dismiss(animated: true, completion: nil)
        
    }
    
    
    

    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
