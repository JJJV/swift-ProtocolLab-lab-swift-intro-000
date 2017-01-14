//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault: ProvideAccess {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
   


}

protocol ProvideAccess {
    func allowEntryWithPassword (_: [Int]) -> Bool
}

 extension ProvideAccess {
        
    func allowEntryWithPassword (_ password: [Int]) -> Bool {
    
        
        if password.isEmpty {
            return false
        } else if password.count > 10 {
            return false
        } else {
            var badCount = 0
            
            for (index, i) in password .enumerated() {
                if  index % 2 == 0 {
                    if i % 2 != 0 {
                    badCount += 1
                    }
                }
            }
            if badCount > 0 {
                return false
            } else {
                return true
            }
        }
        }
}
