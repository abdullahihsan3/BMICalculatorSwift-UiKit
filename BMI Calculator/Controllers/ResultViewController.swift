//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Abdullah Ihsan on 20/06/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!


}
