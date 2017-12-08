//
//  BottleNumber.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/8/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class BottleNumber {
    let number: Int
    
    init(_ number: Int) {
        self.number = number
    }
    
    func container() -> String {
        if number == 1 {
            return "bottle"
        } else {
            return "bottles"
        }
    }
    
    func pronoun() -> String {
        if number == 1 {
            return "it"
        } else {
            return "one"
        }
    }
    
    func quantity() -> String {
        if number == 0 {
            return "no more"
        } else {
            return "\(number)"
        }
    }
    
    func action() -> String {
        if number == 0 {
            return "Go to the store and buy some more"
        } else {
            return "Take \(pronoun()) down and pass it around"
        }
    }
    
    func successor(_ number: Int) -> Int {
        if number == 0 {
            return 99
        } else {
            return number - 1
        }
    }
}
