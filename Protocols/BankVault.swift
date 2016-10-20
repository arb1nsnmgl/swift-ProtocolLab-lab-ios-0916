//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}



class BankVault : ProvideAccess {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        
        if password.isEmpty || password.count > 10 || password[0] % 2 == 1 { return false }
        var passwordCheck = password
        for (index, _) in passwordCheck.enumerated() {
            if index % 2 == 1 {
                passwordCheck[index] = 0
            }
        }
        passwordCheck = passwordCheck.filter({$0 != 0})
        for num in passwordCheck { if num % 2 == 0 { return true } }
        
        return false
    }
    
}





