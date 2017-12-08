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
        if number == 2 {
            return "2 bottles of beer on the wall, " +
                "2 bottles of beer.\n" +
                "Take one down and pass it around, " +
            "1 bottle of beer on the wall.\n"
        } else {
            return "\(number) bottles of beer on the wall, " +
                "\(number) bottles of beer.\n" +
                "Take one down and pass it around, " +
            "\(number - 1) bottles of beer on the wall.\n"
        }
    }
}
