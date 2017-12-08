//
//  Bottles.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/7/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class Bottles {
    func song() -> String {
        return verses(99, 0)
    }
    
    func verses(_ starting: Int, _ ending: Int) -> String {
        return (ending ... starting).reversed().map { verse($0) }.joined(separator: "\n")
    }
    
    func verse(_ number: Int) -> String {
        let bottleNumber = BottleNumber(number)
        let nextBottleNumber = BottleNumber(bottleNumber.successor())
        
        return "\(bottleNumber.description.capitalizedFirst) of beer on the wall, " +
            "\(bottleNumber.description) of beer.\n" +
            "\(bottleNumber.action()), " +
        "\(nextBottleNumber.description) of beer on the wall.\n"
    }
}
