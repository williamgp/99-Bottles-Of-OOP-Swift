//
//  Bottles.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/7/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class Bottles {
    func song() -> String {
        return verses(99, 0)
    }
    
    func verses(_ starting: Int, _ ending: Int) -> String {
        return (ending ... starting).reversed().map { verse($0) }.joined(separator: "\n")
    }
    
    func verse(_ number: Int) -> String {
        switch number {
        case 0:
            return "\(quantity(number).capitalizedFirst) \(container(number)) of beer on the wall, " +
                "\(quantity(number)) \(container(number)) of beer.\n" +
                "\(action(number)), " +
            "\(quantity(99)) bottles of beer on the wall.\n"
        default:
            return "\(quantity(number).capitalizedFirst) \(container(number)) of beer on the wall, " +
                "\(quantity(number)) \(container(number)) of beer.\n" +
                "\(action(number)), " +
            "\(quantity(number - 1)) \(container(number - 1)) of beer on the wall.\n"
        }
    }
    
    func container(_ number: Int) -> String {
        if number == 1 {
            return "bottle"
        } else {
            return "bottles"
        }
    }
    
    func pronoun(_ number: Int) -> String {
        if number == 1 {
            return "it"
        } else {
            return "one"
        }
    }
    
    func quantity(_ number: Int) -> String {
        if number == 0 {
            return "no more"
        } else {
            return "\(number)"
        }
    }
    
    func action(_ number: Int) -> String {
        if number == 0 {
            return "Go to the store and buy some more"
        } else {
            return "Take \(pronoun(number)) down and pass it around"
        }
    }
}
