//
//  BottleNumber0.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/8/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

struct BottleNumber0: BottleNumberProtocol {
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
        return "no more"
    }
    
    func action() -> String {
        return "Go to the store and buy some more"
    }
    
    func successor() -> BottleNumberProtocol {
        return BottleNumberFactory.make(99)
    }
}

extension BottleNumber0: CustomStringConvertible {
    var description: String {
        return "\(quantity()) \(container())"
    }
}
