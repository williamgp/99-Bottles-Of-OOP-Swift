//
//  String+CapitalizedFirst.swift
//  99 Bottles of OOP
//
//  Created by William Peregoy on 12/8/17.
//  Copyright © 2017 William Peregoy. All rights reserved.
//

import Foundation

extension String {
    var capitalizedFirst: String {
        guard let first = first else { return "" }
        return String(first).uppercased() + dropFirst()
    }
}
