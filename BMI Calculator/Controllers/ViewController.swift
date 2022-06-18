//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
  
    
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
        print( Float(weight * 703) / Float(pow(height,2)))
    }
    
}

