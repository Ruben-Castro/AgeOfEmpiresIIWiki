//
//  CivilizationDetailsView.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/30/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct CivilizationDetailsView: View {
    var civilizationDetails : Civilization
    var body: some View {
        VStack {
            Text(civilizationDetails.name)
                .font(.title)
            Text(civilizationDetails.expansion)
            Text(civilizationDetails.army_type)
            Text(civilizationDetails.team_bonus)
        }
        
    }
}


struct CivilizationDetailsView_Previews: PreviewProvider {
    static let civ = Civilization(name:"Aztecs", expansion:"sdfasd", army_type:"sdfasdf", unique_unit:["sdfasd","sdfasdf"],
    unique_tech:["sdafas"], team_bonus:"sdfasdf", civilization_bonus:["sdfasd"])
    static var previews: some View {
        CivilizationDetailsView(civilizationDetails: civ)
    }
}

