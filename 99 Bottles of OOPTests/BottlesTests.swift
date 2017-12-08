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
}
