//
//  CalculateTip.swift
//  Tipsy
//
//  Created by formathead on 2020/02/18.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Calculate {
    
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
    
    func calculatePersonTip(total: String, selTip: String, person: String) -> String {

        guard let total = Float(total) else { return "0.0" }
        guard let seltip = Float(tip?.inputTip ?? "0.0") else { return "0"}
        let rawPerson = tip?.inputSplit ?? 0
        let person = Float(rawPerson)
        
        let resultCal = total * (1 + seltip) / person
        let fininalResult = String(format: "%.2f", resultCal)
        
        let retunResult = "total \(fininalResult)"
        print(retunResult)
        return retunResult
    }
    
}
