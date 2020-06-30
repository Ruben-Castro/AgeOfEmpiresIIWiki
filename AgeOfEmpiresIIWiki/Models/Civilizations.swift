//
//  Civilizations.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/29/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import Foundation
import SwiftUI

struct Civilization :Identifiable, Decodable{
    
    let id = UUID()
    let name: String
    let expansion:String
    let army_type:String
    let unique_units:[String]
    let unique_tech:[String]
    let team_bonus: String
    let civilization_bonus:[String]
    
    init(name:String, expansion:String, army_type:String, unique_units:[String],
         unique_tech:[String], team_bonus:String, civilization_bonus:[String]) {
        self.name = name
        self.expansion = expansion
        self.army_type = army_type
        self.unique_units = unique_units
        self.unique_tech = unique_tech
        self.team_bonus = team_bonus
        self.civilization_bonus = civilization_bonus
    }
    
    
}


