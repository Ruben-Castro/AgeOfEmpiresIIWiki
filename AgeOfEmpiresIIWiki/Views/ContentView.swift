//
//  ContentView.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/29/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var homeVM = HomeViewModel()
    var catergories = ["Civilizations", "Units", "Tech"]
    
   
    
    var body: some View {
       
        NavigationView {
            List(catergories, id: \.self) { category in
                if category == "Civilizations"{
                    NavigationLink(destination: CivilizationsView(civilizations: self.homeVM.civilizations)) {
                         Text("Civilizations")
                    }
                } else if category == "Units" {
                    NavigationLink(destination: UnitsView()) {
                     Text("units")
                    }
                } else {
                    NavigationLink(destination: UnitsView()) {
                     Text("Tech")
                    }
                }
                
                
                
                }.navigationBarTitle("Age Of Empires II Wiki")
            }
            
        
        }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
