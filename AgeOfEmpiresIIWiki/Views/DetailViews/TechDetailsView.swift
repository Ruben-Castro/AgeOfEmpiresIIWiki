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
        Text(techData.name)
    }
}

/*
struct TechDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TechDetailsView()
    }
}
*/
