//
//  BottleNumber0.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/8/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class BottleNumber0: BottleNumber {
    override func quantity() -> String {
        return "no more"
    }
    
    override func action() -> String {
        return "Go to the store and buy some more"
    }
    
    override func successor() -> Any {
        return BottleNumber.make(99)
    }
}
