//
//  BottleNumber0.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/8/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

struct BottleNumber0: BottleNumberProtocol {
    let number: Int
    
    var quantity: String {
        return "no more"
    }

    var action: String {
        return "Go to the store and buy some more"
    }

    func successor() -> BottleNumberProtocol {
        return BottleNumberFactory.make(99)
    }
}


