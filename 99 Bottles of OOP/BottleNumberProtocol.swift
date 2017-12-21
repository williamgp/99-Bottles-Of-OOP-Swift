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
    
    init(_ number: Int)
    
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
