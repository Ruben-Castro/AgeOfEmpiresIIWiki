//
//  TechView.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/30/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct TechView: View {
    var techData: TechnologiesData
    var body: some View {
        List(techData.technologies) { tech in
            NavigationLink(destination: TechDetailsView(techData: tech)){
                Text(tech.name)
            }
        }.navigationBarTitle("Tech",displayMode: .inline )
      
    }
}

/*
struct TechView_Previews: PreviewProvider {
    static var previews: some View {
        TechView()
    }
}
*/
