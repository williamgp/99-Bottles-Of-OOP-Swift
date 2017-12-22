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
    
    var container: String { get }
    
    var pronoun: String { get }
    
    var quantity: String { get }
    
    var action: String { get }

    func successor() -> BottleNumberProtocol
}

extension CustomStringConvertible where Self: BottleNumberProtocol {
    var description: String {
        return "\(quantity) \(container)"
    }
}

extension BottleNumberProtocol {
    var container: String {
        return "bottles"
    }

    var pronoun: String {
        return "one"
    }
    
    var quantity: String {
        return number.description
    }
    
    var action: String {
        return "Take \(pronoun) down and pass it around"
    }
    
    func successor() -> BottleNumberProtocol {
        return BottleNumberFactory.make(number - 1)
    }
}
