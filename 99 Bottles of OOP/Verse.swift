//
//  Verse.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/7/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class Verse {
    let number: Int
    lazy var lyrics = ""
    
    init(_ number: Int, lyrics: (Verse) -> String) {
        self.number = number
        self.lyrics = lyrics(self)
    }
    
    var text: String {
        return lyrics
    }
}
