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
    var height:Float?
    var weight:Int?
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let value = round(sender.value * 100) / 100
        height = value
        //print(value)
        heightLabel.text = "\(String(value)) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let value = Int(round(sender.value))
        weight = value
        
        //print(value)
        weightLabel.text = "\(String(value)) Kg"
    }
    
    
    @IBAction func onCalculateClicked(_ sender: UIButton) {
        calculatorBrain.calculateBmi(height: height!, weight: Float(weight!))
       
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult"){
            let destinationVC = segue.destination as! ResultViewController
            let bmiValueFromBrain = calculatorBrain.getBMIValue()
            destinationVC.bmiValue = String(bmiValueFromBrain!)
        }
    }
}

