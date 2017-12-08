//
//  Bottles.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/7/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class Bottles {
    func verse(_ number: Int) -> String {
        var n = Int()
        if number == 99 {
            n = 99
        } else {
            n = 3
        }
        
        return "\(n) bottles of beer on the wall, " +
            "\(n) bottles of beer.\n" +
            "Take one down and pass it around, " +
        "\(n - 1) bottles of beer on the wall.\n"
    }
}
