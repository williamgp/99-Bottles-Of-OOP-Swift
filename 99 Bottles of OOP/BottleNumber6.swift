//
//  BottleNumber6.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/8/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

struct BottleNumber6: BottleNumberProtocol {
    let number: Int
    
    init(_ number: Int) {
        self.number = number
    }

    func quantity() -> String {
        return "1"
    }
    
    func container() -> String {
        return "six-pack"
    }
}

