//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var bmi = BMI()

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + "kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        bmi.calculate(height: heightSlider.value, weight: weightSlider.value)
        // Faz a transição de uma tela para a outra a patir do identifier definido nas views.
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    // Disparado ao executar o método self.performSegue e redireciona para a tela correta a partir do identifier
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            // Faz um cast do segue.destination para o ResultViewController
            let resultView = segue.destination as! ResultViewController
            resultView.bmi = bmi
        }
    }
}

