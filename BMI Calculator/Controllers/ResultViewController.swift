//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Arshaan Sayed on 6/18/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiVal: String?
    var advicee: String?
    var colorr: UIColor?
    @IBOutlet weak var color: UIImageView!
    @IBOutlet weak var advice: UILabel!
    @IBOutlet weak var dengxiaoping: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

     
        self.dengxiaoping.text = bmiVal
        self.advice.text = advicee
        self.color.backgroundColor = colorr
    }
    
    @IBAction func goHome(_ sender: UIButton) {
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
