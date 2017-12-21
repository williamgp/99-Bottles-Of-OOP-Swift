//
//  BottleNumberFactory.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/20/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

struct BottleNumberFactory {
    static func make(_ number: Int) -> BottleNumberProtocol {
        switch number {
        case 0:
            return BottleNumber0(number: number)
        case 1:
            return BottleNumber1(number: number)
        case 6:
            return BottleNumber6(number: number)
        default:
            return BottleNumber(number: number)
        }
    }
}
