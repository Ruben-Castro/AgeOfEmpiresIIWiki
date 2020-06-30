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
        VStack(alignment: .leading) {
            Image("Logo")
                .resizable()
                .frame(height: 200)
                .scaledToFill()
                .edgesIgnoringSafeArea(.bottom)

            HStack {
                Spacer()
                Text(civilizationDetails.name)
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                Spacer()
            }
            .padding(.bottom)
            
           
            VStack(alignment: .leading) {
                ExtractedView(title: "Expansion:    ", detail: civilizationDetails.expansion)
                ExtractedView(title: "Army Type:   ", detail: civilizationDetails.army_type)
                ExtractedView(title: "Team Bonus:", detail:civilizationDetails.team_bonus)
            }
            

            CivBonusView(title: "Civilizations Bonuses", bonuses: civilizationDetails.civilization_bonus)
            
        }.background(Color.yellow)
        
        
    }
}

#if DEBUG
struct CivilizationDetailsView_Previews: PreviewProvider {
    static let civ = Civilization(name:"Aztecs", expansion:"sdfasd", army_type:"sdfasdf",team_bonus:"sdfasdfasfasdfasdfa", civilization_bonus:["sdfasd"])
    static var previews: some View {
        CivilizationDetailsView(civilizationDetails: civ)
    }
}
#endif


struct ExtractedView: View {
    var title:String
    var detail:String
    var body: some View {
        HStack {
            Text(title)
            .font(.headline)
            Text(detail)
          
        }
    }
}

struct CivBonusView: View {
    var title: String
    var bonuses: [String]
    
    var body: some View {
            List {
                Section(header: Text("Civilization Bonuses")){
                    ForEach(0..<self.bonuses.count){
                        Text(self.bonuses[$0])
                        
                    }
                }
            }
    }
}
