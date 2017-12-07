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
    
    func verses(_ bottlesAtStart: Int, _ bottlesAtEnd: Int) -> String {
        return (bottlesAtEnd ... bottlesAtStart).reversed().map { verse($0) }.joined(separator: "\n")
    }
    
    func verse(_ bottles: Int) -> String {
        return Round(bottles).description
    }
}
