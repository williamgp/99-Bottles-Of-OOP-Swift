//
//  Round.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/7/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

class Round {
    var bottles: Int
    
    init(_ bottles: Int) {
        self.bottles = bottles
    }
    
    var description: String {
        return challenge + response
    }

    private var challenge: String {
        return bottlesOfBeer.capitalizedFirst + " " + onWall + ", " + bottlesOfBeer + ".\n"
    }
    
    private var response: String {
        return goToTheStoreOrTakeOneDown() + ", " + bottlesOfBeer + " " + onWall + ".\n"
    }
    
    private var bottlesOfBeer: String {
        return "\(anglicizedBottleCount) \(pluralizedBottleForm) of \(beer)"
    }
    
    private var beer: String {
        return "beer"
    }
    
    private var onWall: String {
        return "on the wall"
    }
    
    private var pluralizedBottleForm: String {
        return isLastBeer ? "bottle" : "bottles"
    }
    
    private var anglicizedBottleCount: String {
        return isAllOut ? "no more" : bottles.description
    }
    
    private func goToTheStoreOrTakeOneDown() -> String {
        if isAllOut {
            bottles = 99
            return buyNewBeer()
        } else {
            let lyrics = drinkBeer()
            bottles -= 1
            return lyrics
        }
    }
    
    private func buyNewBeer() -> String {
        return "Go to the store and buy some more"
    }
    
    private func drinkBeer() -> String {
        return "Take \(itOrOne) down and pass it around"
    }
    
    private var itOrOne: String {
        return isLastBeer ? "it" : "one"
    }
    
    private var isAllOut: Bool {
        return bottles == 0
    }
    
    private var isLastBeer: Bool {
        return bottles == 1
    }
}
