//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

   var calculatorBrain = CalculatorBrain()
    
    var advice: String?
    var color: UIColor?
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
   
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        
        self.height.text! = "\(Int(sender.value))in"
    }
    
    
    @IBAction func weightChanged(_ sender: UISlider) {
        
        self.weight.text! = "\(String(Int(sender.value)))Ib"
    }
    
    
    @IBAction func calc(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        
        print(height)
        print(weight)
     
      
        calculatorBrain.calcBmi(weight: Int(weight), height: Int(height))
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let dVCHedgeFund = segue.destination as! ResultViewController
            dVCHedgeFund.bmiVal = calculatorBrain.getBmi()
            dVCHedgeFund.advicee = calculatorBrain.getAdvice()
            dVCHedgeFund.colorr = calculatorBrain.getColor()
        }
    }
    
}

