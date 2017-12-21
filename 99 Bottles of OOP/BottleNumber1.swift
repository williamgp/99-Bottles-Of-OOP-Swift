//
//  BottleNumber1.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/8/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

struct BottleNumber1: BottleNumberProtocol {
    let number: Int
    
    init(_ number: Int) {
        self.number = number
    }
    
    func quantity() -> String {
        return number.description
    }
    
    func action() -> String {
        return "Take \(pronoun()) down and pass it around"
    }
    
    func successor() -> BottleNumberProtocol {
        return BottleNumberFactory.make(number - 1)
    }
    
    func container() -> String {
        return "bottle"
    }
    
    func pronoun() -> String {
            return "it"
    }
}

extension BottleNumber1: CustomStringConvertible {
    var description: String {
        return "\(quantity()) \(container())"
    }
}
