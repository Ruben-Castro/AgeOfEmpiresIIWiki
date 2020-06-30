//
//  CostView.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/30/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct CostDetailView: View {
    var resourceType: String
    var cost: Int?
    
    var body: some View {
        HStack {
            Text(resourceType + ": ")
            .font(.headline)
            if cost != nil {
                Text(String(cost!))
            }else{
                Text("N/A")
            }
            Spacer()
        }
    }
}

struct CostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CostDetailView(resourceType: "Wood",cost: 25)
        //CostView(resourceType: "Gold")
    }
}
