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
    
    
    var tip: TIP?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipBTNPressed(_ sender: UIButton) {
        zeroBtn.isSelected = false
        tenBtn.isSelected = false
        twenBtn.isSelected = false
        
        sender.isSelected = true
        
    }
    
    @IBAction func stepperBTnPressed(_ sender: UIStepper) {
        
    }
    
    
    @IBAction func calculateBTnPressed(_ sender: UIButton) {
        
    }
    
    
}//End Of The Class


