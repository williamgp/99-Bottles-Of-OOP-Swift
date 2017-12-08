//
//  BottlesTests.swift
//  99 Bottles of OOPTests
//
//  Created by William Peregoy on 12/7/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import XCTest

class BottlesTests: XCTestCase {
    func testTheFirstVerse() {
        let expected = "99 bottles of beer on the wall, " +
            "99 bottles of beer.\n" +
            "Take one down and pass it around, " +
        "98 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottles().verse(99))
    }
    
    func testAnotherVerse() {
        let expected = "3 bottles of beer on the wall, " +
            "3 bottles of beer.\n" +
            "Take one down and pass it around, " +
        "2 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottles().verse(3))
    }
    
    func testVerse2() {
        let expected = "2 bottles of beer on the wall, " +
            "2 bottles of beer.\n" +
            "Take one down and pass it around, " +
        "1 bottle of beer on the wall.\n"
        XCTAssertEqual(expected, Bottles().verse(2))
    }
    
    func testVerse1() {
        let expected = "1 bottle of beer on the wall, " +
            "1 bottle of beer.\n" +
            "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottles().verse(1))
    }
    
    func testVerse0() {
        let expected = "No more bottles of beer on the wall, " +
            "no more bottles of beer.\n" +
            "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottles().verse(0))
    }
    
    func testACoupleOfVerses() {
        let expected = "99 bottles of beer on the wall, " +
            "99 bottles of beer.\n" +
            "Take one down and pass it around, " +
            "98 bottles of beer on the wall.\n" +
            "\n" +
            "98 bottles of beer on the wall, " +
            "98 bottles of beer.\n" +
            "Take one down and pass it around, " +
        "97 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottles().verses(99,98))
    }
    
    func testAFewVerses() {
        let expected = "2 bottles of beer on the wall, " +
            "2 bottles of beer.\n" +
            "Take one down and pass it around, " +
            "1 bottle of beer on the wall.\n" +
            "\n" +
            "1 bottle of beer on the wall, " +
            "1 bottle of beer.\n" +
            "Take it down and pass it around, " +
            "no more bottles of beer on the wall.\n" +
            "\n" +
            "No more bottles of beer on the wall, " +
            "no more bottles of beer.\n" +
            "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottles().verses(2,0))
    }
    
    func testTheWholeSong() {
        let bottles = Bottles()
        let expected = (0 ... 99).reversed().map { bottles.verse($0) }.joined(separator: "\n")
        XCTAssertEqual(expected, bottles.song())
    }
}
