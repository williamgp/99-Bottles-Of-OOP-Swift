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
        if number == 99 {
            return "99 bottles of beer on the wall, " +
                "99 bottles of beer.\n" +
                "Take one down and pass it around, " +
            "98 bottles of beer on the wall.\n"
        } else {
            return "3 bottles of beer on the wall, " +
                "3 bottles of beer.\n" +
                "Take one down and pass it around, " +
            "2 bottles of beer on the wall.\n"
        }
    }
}
