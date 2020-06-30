//
//  UnitsView.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/29/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct UnitsView: View {
    var unitsData : UnitsData
    
  var body: some View {
        List(unitsData.units) { unit in
            NavigationLink(destination:UnitDetailsView(unit: unit) ){
                Text(unit.name)
            }
        }.navigationBarTitle("Units",displayMode: .inline )
    }
}
/*
struct UnitsView_Previews: PreviewProvider {
    static var previews: some View {
        UnitsView()
    }
}
*/
