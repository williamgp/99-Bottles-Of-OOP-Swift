//
//  BottleNumber0.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/8/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class BottleNumber0: BottleNumber {
    override func quantity() -> String {
            return "no more"
    }
    
    override func action() -> String {
        if number == 0 {
            return "Go to the store and buy some more"
        } else {
            return "Take \(pronoun()) down and pass it around"
        }
    }
    
    override func successor() -> Int {
        if number == 0 {
            return 99
        } else {
            return number - 1
        }
    }
}
