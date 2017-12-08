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
        return "\(number) bottles of beer on the wall, " +
            "\(number) bottles of beer.\n" +
            "Take one down and pass it around, " +
        "\(number - 1) bottle\(number - 1 == 1 ? "" : "s") of beer on the wall.\n"
    }
}
