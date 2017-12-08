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
        
        return "\(bottleNumber.quantity().capitalizedFirst) \(bottleNumber.container()) of beer on the wall, " +
            "\(bottleNumber.quantity()) \(bottleNumber.container()) of beer.\n" +
            "\(bottleNumber.action()), " +
        "\(nextBottleNumber.quantity()) \(nextBottleNumber.container()) of beer on the wall.\n"
    }
}
