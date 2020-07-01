//
//  CustomButton.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 7/1/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var customColor:String
    
    var body: some View {
        Text(title)
        .bold()
        .frame(width: 200, height: 50)
        .background(Color(customColor))
        .foregroundColor(.white)
        .cornerRadius(10)
            
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Tech", customColor: "Custom-Green")
    }
}
