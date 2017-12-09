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
        let bottleNumber = self.bottleNumber(for: number)
        let nextBottleNumber = self.bottleNumber(for: bottleNumber.successor())
        
        return "\(bottleNumber) ".capitalizedFirst + "of beer on the wall, " +
            "\(bottleNumber) of beer.\n" +
            "\(bottleNumber.action()), " +
        "\(nextBottleNumber) of beer on the wall.\n"
    }
    
    func bottleNumber(for number: Int) -> BottleNumber {
        switch number {
        case 0:
            return BottleNumber0(number)
        case 1:
            return BottleNumber1(number)
        default:
            return BottleNumber(number)
        }
    }
}
