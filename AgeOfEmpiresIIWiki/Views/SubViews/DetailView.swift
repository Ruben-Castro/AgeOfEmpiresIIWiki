//
//  DetailView.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/30/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var title:String
    var detail:String
    var body: some View {
        HStack {
            Text(title + ": ")
            .font(.headline)
            Text(detail)
          
        }
    }
}
#if DEBUG
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Category", detail: "Feudal")
    }
}
#endif

