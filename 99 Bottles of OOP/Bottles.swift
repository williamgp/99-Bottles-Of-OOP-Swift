//
//  Bottles.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/7/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class Bottles {
    func verses(_: Int, _: Int) -> String {
        return "99 bottles of beer on the wall, " +
            "99 bottles of beer.\n" +
            "Take one down and pass it around, " +
            "98 bottles of beer on the wall.\n" +
            "\n" +
            "98 bottles of beer on the wall, " +
            "98 bottles of beer.\n" +
            "Take one down and pass it around, " +
        "97 bottles of beer on the wall.\n"
    }
    
    func verse(_ number: Int) -> String {
        switch number {
        case 0:
            return "No more bottles of beer on the wall, " +
                "no more bottles of beer.\n" +
                "Go to the store and buy some more, " +
            "99 bottles of beer on the wall.\n"
        case 1:
            return "1 bottle of beer on the wall, " +
                "1 bottle of beer.\n" +
                "Take it down and pass it around, " +
            "no more bottles of beer on the wall.\n"
        case 2:
            return "2 bottles of beer on the wall, " +
                "2 bottles of beer.\n" +
                "Take one down and pass it around, " +
            "1 bottle of beer on the wall.\n"
        default:
            return "\(number) bottles of beer on the wall, " +
                "\(number) bottles of beer.\n" +
                "Take one down and pass it around, " +
            "\(number - 1) bottles of beer on the wall.\n"
        }
    }
}
