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
    
    func verses(_ high: Int, _ low: Int) -> String {
        return (low ... high).reversed().map { verse($0) }.joined()
    }
    
    func verse(_ n: Int) -> String {
        return "\(n == 0 ? "No more" : "\(n)") bottle\(n != 1 ? "s" : "") of beer on the wall, \(n == 0 ? "no more" : "\(n)") bottle\(n != 1 ? "s" : "") of beer. \n" +
        "\(n > 0 ? "Take \(n > 1 ? "one" : "it") down and pass it around" : "Go to the store and buy some more"), \(n - 1 < 0 ? "99" : n - 1 == 0 ? "no more" : "\(n - 1)") bottle\(n != 1 ? "s" : "") of beer on the wall. \n"
    }
}
