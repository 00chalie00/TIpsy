//
//  ResultVC.swift
//  Tipsy
//
//  Created by formathead on 2020/02/18.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {

    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var subLB: UILabel!
    
    
    var resultTip: String?
    var resultSplit: String?
    var resultSelTip: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()

    }
    
    
    func configure() {
        self.tip.text = resultTip!
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
