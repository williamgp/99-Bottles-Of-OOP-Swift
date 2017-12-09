//
//  BottleNumber.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/8/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class BottleNumber {
    static func make(_ number: Int) -> BottleNumber {
        switch number {
        case 0:
            return BottleNumber0(number)
        case 1:
            return BottleNumber1(number)
        case 6:
            return BottleNumber6(number)
        default:
            return BottleNumber(number)
        }
    }

    let number: Int
    
    init(_ number: Int) {
        self.number = number
    }

    func container() -> String {
        return "bottles"
    }
    
    func pronoun() -> String {
        return "one"
    }
    
    func quantity() -> String {
        return number.description
    }
    
    func action() -> String {
        return "Take \(pronoun()) down and pass it around"
    }
    
    func successor() -> BottleNumber {
        return BottleNumber.make(number - 1)
    }
}

extension BottleNumber: CustomStringConvertible {
    var description: String {
        return "\(quantity()) \(container())"
    }
}


