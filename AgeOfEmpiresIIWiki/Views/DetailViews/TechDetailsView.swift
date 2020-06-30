//
//  TechDetailsView.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/30/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct TechDetailsView: View {
    var techData: Tech
    var body: some View {
        VStack {
            Image("units")
                .resizable()
                .frame(height:200)
                .scaledToFill()
            
            Text(techData.name)
            .font(.system(size: 40, weight: .bold, design: .monospaced))
            
            VStack(alignment: .leading) {
                DetailView(title: "Age", detail: techData.age)
                CostDetailView(resourceType: "Wood", cost: techData.cost.Wood)
                CostDetailView(resourceType: "Food", cost: techData.cost.Food)
                CostDetailView(resourceType: "Stone", cost: techData.cost.Stone)
                CostDetailView(resourceType: "Gold", cost: techData.cost.Gold)
                DescriptionView(title: "Description", description:techData.description)
            }
            .padding(.leading)
            .padding(.top)
            
            Spacer()
        }.background(Color.yellow)
       
    }
}





