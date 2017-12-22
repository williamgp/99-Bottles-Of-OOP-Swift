//
//  BottleNumber1.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/8/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

struct BottleNumber1: BottleNumberProtocol {
    let number: Int
    
    var container: String {
        return "bottle"
    }
    
    var pronoun: String {
        return "it"
    }
}

