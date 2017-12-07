//
//  Bottles.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/7/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class Bottles {
    let noMore = { (verse: Verse) -> String in
        "No more bottles of beer on the wall, " +
        "no more bottles of beer. \n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
    }
    
    let lastOne = { (verse: Verse) -> String in
        "1 bottle of beer on the wall, " +
        "1 bottle of beer. \n" +
        "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
    }
    
    let penultimate = { (verse: Verse) -> String in
        "2 bottles of beer on the wall, " +
        "2 bottles of beer. \n" +
        "Take one down and pass it around, " +
        "1 bottle of beer on the wall.\n"
    }
    
    let defaultVerse = { (verse: Verse) -> String in
        "\(verse.number) bottles of beer on the wall, " +
        "\(verse.number)  bottles of beer. \n" +
        "Take one down and pass it around, " +
        "\(verse.number - 1) bottles of beer on the wall.\n"
    }
    
    func song() -> String {
        return verses(99, 0)
    }
    
    func verses(_ finish: Int, _ start: Int) -> String {
        return (start ... finish).reversed().map { verse($0) }.joined(separator: "\n")
    }
    
    func verse(_ number: Int) -> String {
        return verse(for: number).text
    }
    
    func verse(for number: Int) -> Verse {
        switch number {
        case 0:
            return Verse(number, lyrics: noMore)
        case 1:
            return Verse(number, lyrics: lastOne)
        case 2:
            return Verse(number, lyrics: penultimate)
        default:
            return Verse(number, lyrics: defaultVerse)
        }
    }
}
