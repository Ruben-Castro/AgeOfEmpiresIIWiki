//
//  ContentView.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/29/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var homeVM = HomeViewModel()
    var catergories : [String] = ["Civilizations", "Units", "Tech"]
    
   
    
    var body: some View {
       
        NavigationView {
            List(catergories, id: \.self) { category in
                if category == "Civilizations"{
                    NavigationLink(destination: CivilizationsView(civilizations: self.homeVM.civilizations)) {
                         Text("Civilizations")
                    }
                } else if category == "Units" {
                    NavigationLink(destination: UnitsView(unitsData: self.homeVM.units)) {
                     Text("units")
                    }
                } else {
                    NavigationLink(destination: TechView(techData: self.homeVM.tech)) {
                     Text("Tech")
                    }
                }
                
                
                
                }.navigationBarTitle("Age Of Empires II Wiki")
            }
            
        
        }

}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            HomeView()
                .previewDevice("iPhone SE")
                .previewDisplayName("iPhone SE")
            
            HomeView()
            .previewDevice("iPhone 8")
                .previewDisplayName("iPhone 8")
            
            HomeView()
                .previewDevice("iPhone XS MAX")
                .previewDisplayName("iPhone XS Max")
        }
    }
}

#endif

