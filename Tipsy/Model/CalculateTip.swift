//
//  CalculateTip.swift
//  Tipsy
//
//  Created by formathead on 2020/02/18.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

struct CalculateTip {
    
    var tip: TIP?
    
    func getTip() -> String {
        let rawTIp = tip?.personalTip ?? 0.0
        let returnTip = String(format: "%.2f", rawTIp)
        
        return returnTip
    }
    
    func getSplit() -> Int {
        let split = tip?.inputSplit ?? 0
        
        return split
    }
    
    func getPersonTIp() -> Float {
        let personTip = tip?.personalTip ?? 0.0
        
        return personTip
    }
    
    mutating func calculatePersonTip(total: String, selTip: String, person: String) {
        
        guard let total = Float(total) else { return }
        guard let seltip = Float(tip?.inputTip ?? "0.0") else { return }
        let rawPerson = tip?.inputSplit ?? 0
        let person = Float(rawPerson)
        
        let resultCal = total * (1 + seltip) / person
        let seltipInt = Int(selTip)
        
        tip =  TIP(inputTip: selTip, inputSplit: seltipInt, personalTip: resultCal)
    }
    
}
