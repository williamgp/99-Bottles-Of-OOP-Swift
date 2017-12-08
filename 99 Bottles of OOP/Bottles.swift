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
            return "No more bottles of beer on the wall, " +
                "no more bottles of beer.\n" +
                "Go to the store and buy some more, " +
            "99 bottles of beer on the wall.\n"
        case 1:
            return "\(number) \(container(number)) of beer on the wall, " +
                "\(number) \(container(number)) of beer.\n" +
                "Take \(pronoun(number)) down and pass it around, " +
            "\(quantity(number - 1)) bottles of beer on the wall.\n"
        default:
            return "\(number) \(container(number)) of beer on the wall, " +
                "\(number) \(container(number)) of beer.\n" +
                "Take \(pronoun(number)) down and pass it around, " +
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
}
