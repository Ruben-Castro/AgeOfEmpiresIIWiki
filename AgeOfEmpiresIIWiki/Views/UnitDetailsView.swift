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
        Text(unit.name)
    }
}

/*
struct UnitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        UnitDetailsView()
    }
}
*/
