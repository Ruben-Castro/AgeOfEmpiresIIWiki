//
//  UnitDetailsView.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/30/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct UnitDetailsView: View {
    var unit: Unit
    var body: some View {
        VStack {
            Image("units")
                .resizable()
                .frame(height: 200)
                .scaledToFill()
            
            Text(unit.name)
                .font(.system(size: 40, weight: .bold, design: .monospaced))
            
            VStack(alignment:.leading) {
                DetailView(title: "Age", detail: unit.age)
                CostDetailView(resourceType: "Wood", cost: unit.cost.Wood)
                CostDetailView(resourceType: "Food", cost: unit.cost.Food)
                CostDetailView(resourceType: "Stone", cost: unit.cost.Stone)
                CostDetailView(resourceType: "Gold", cost: unit.cost.Gold)
                DescriptionView(title: "Description",description: unit.description)
            }
            .padding(.leading)
            .padding(.top)
           
            
            Spacer()
        }.background(Color.yellow)
        
        
        
    }
}

/*
struct UnitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        UnitDetailsView()
    }
}
*/


