//
//  DescriptionView.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/30/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct DescriptionView: View {
    var title:String
    var description:String
    
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment:.center, spacing: 10) {
                Text(title)
                    .font(.headline)
                Text(description)
            }
            .padding(.top)
            Spacer()
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(title: "Description", description: "bla bla blah")
    }
}
