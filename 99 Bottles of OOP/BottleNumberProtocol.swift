//
//  BottleNumberProtocol.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/20/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

protocol BottleNumberProtocol: CustomStringConvertible {
    var number: Int { get }
        
    func container() -> String
    
    func pronoun() -> String
    
    func quantity() -> String
    
    func action() -> String
    
    func successor() -> BottleNumberProtocol
}

extension CustomStringConvertible where Self: BottleNumberProtocol {
    var description: String {
        return "\(quantity()) \(container())"
    }
}

extension BottleNumberProtocol {
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
    
    func successor() -> BottleNumberProtocol {
        return BottleNumberFactory.make(number - 1)
    }
}
