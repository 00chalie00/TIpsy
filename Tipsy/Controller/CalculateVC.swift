//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateVC: UIViewController {

    @IBOutlet weak var totalLb: UITextField!
    @IBOutlet weak var splitLb: UILabel!
    @IBOutlet weak var zeroBtn: UIButton!
    @IBOutlet weak var tenBtn: UIButton!
    @IBOutlet weak var twenBtn: UIButton!
    

    var step = 0
    var calculateTip = CalculateTip()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipBTNPressed(_ sender: UIButton) {
        totalLb.endEditing(true)
        
        zeroBtn.isSelected = false
        tenBtn.isSelected = false
        twenBtn.isSelected = false
        
        sender.isSelected = true
        
    }
    
    @IBAction func stepperBTnPressed(_ sender: UIStepper) {
        splitLb.text = String(format: "%.0f", sender.value)
        step = Int(sender.value)
    }
    
    
    @IBAction func calculateBTnPressed(_ sender: UIButton) {
        calculateTip.calculatePersonTip(total: totalLb.text!, selTip: splitLb.text!, person: String(step))
        
        performSegue(withIdentifier: "gotoResultVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResultVC" {
            let resultVC = segue.destination as! ResultVC
            resultVC.resultSelTip = calculateTip.getTip()
            resultVC.resultSplit = String(format: "%.0f", calculateTip.getSplit())
            resultVC.resultTip = String(format: "%.2f", calculateTip.getPersonTIp())
            print(resultVC.resultTip)
        }
    }
    
    
}//End Of The Class


