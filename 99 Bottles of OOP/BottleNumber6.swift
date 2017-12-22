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
    
    var container: String {
        return "six-pack"
    }

    var quantity: String {
        return "1"
    }
}

