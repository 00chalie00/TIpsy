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
        guard let seltip = Float(selTip) else { return }
        guard let personreturn = Float(person) else { return }
        
        let resultCal = total * (seltip / 100) / personreturn
        let seltipInt = Int(selTip)
        
        print(total, selTip, personreturn, resultCal)
        
        tip =  TIP(inputTip: selTip, inputSplit: seltipInt, personalTip: resultCal)
    }
    
}
