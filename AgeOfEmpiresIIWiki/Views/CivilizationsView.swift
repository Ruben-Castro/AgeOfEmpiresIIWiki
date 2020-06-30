//
//  CivilizationViews.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/29/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct CivilizationsView: View {
    var civilizations : CivilizationsData
    
    var body: some View {
        NavigationView {
            List(civilizations.civilizations) { civ in
                
                Text(civ.name)
                           
            }.navigationBarTitle("Civilizations")
        }
       
    }
}

/*
struct CivilizationViews_Previews: PreviewProvider {
    static let civilizations1 = [Civilization(name:"Aztecs", expansion:"sdfasd", army_type:"sdfasdf", unique_units:["sdfasd","sdfasdf"],
    unique_tech:["sdafas"], team_bonus:"sdfasdf", civilization_bonus:["sdfasd"]),
    Civilization(name:"Aztecs", expansion:"sdfasd", army_type:"sdfasdf", unique_units:["sdfasd","sdfasdf"],
                                 unique_tech:["sdafas"], team_bonus:"sdfasdf", civilization_bonus:["sdfasd"])
    ]
    static var previews: some View {
        CivilizationsView(civilizations: civilizations1)
    }
}
 */
 
