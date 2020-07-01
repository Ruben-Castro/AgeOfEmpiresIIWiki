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
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(named: "Custom-Green")
        UINavigationBar.appearance().largeTitleTextAttributes = [
        .foregroundColor: UIColor.white,
        .font : UIFont(name:"Papyrus", size: 40)!]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.brown)
            VStack(spacing: 5) {
                NavigationLink(destination:CivilizationsView(civilizations: self.homeVM.civilizations)){
                    CustomButton(title: "Civilization",customColor: "Custom-Green")
                    
                }
                
               NavigationLink(destination: UnitsView(unitsData: self.homeVM.units)){
                    CustomButton(title: "Units",customColor: "Custom-Green")
                    
                }
                
                NavigationLink(destination: TechView(techData: self.homeVM.tech)){
                    CustomButton(title: "Tech",customColor: "Custom-Green")
                        
                            
                }
               
                            
            }
            
        }.navigationBarTitle("Age of Empires II Wiki")
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

