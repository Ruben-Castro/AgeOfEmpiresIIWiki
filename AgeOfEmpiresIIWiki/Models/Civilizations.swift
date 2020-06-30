//
//  Civilizations.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/29/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import Foundation
import SwiftUI

struct CivilizationsData : Decodable, Hashable{

    let civilizations: [Civilization]
    
    
   
    
    
}

struct Civilization :Decodable, Identifiable, Hashable {
    let id = UUID()
    let name: String
    let expansion:String
    let army_type:String
    let unique_unit:[String]
    let unique_tech:[String]
    let team_bonus: String
    let civilization_bonus:[String]
}

