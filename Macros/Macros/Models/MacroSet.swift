//
//  MacroSet.swift
//  Macros
//
//  Created by Alex Rhodes on 7/14/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import Foundation

class MacroSet {
    var protein: Double
    var carbs: Double
    var fat: Double
    var date: Date?
    
    init(protein: Double, carbs: Double, fat: Double, date: Date) {
        self.protein = protein
        self.carbs = carbs
        self.fat = fat
        self.date = date
    }
}

