//
//  HomeViewModel.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/29/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI

// its an open api so no hiding necessary

let apiURL = "https://age-of-empires-2-api.herokuapp.com/api/v1/"

class HomeViewModel: ObservableObject {
    
    @Published var messages = " inside observable object"
    @Published var civilizations  = [Civilization]()
    @Published var units = []
    @Published var tech = []
    
    func fetchCivilizations() {
        // fetch json decode and update array property
        
        
    }
    
    func fetchUnits() {
        
        
    }
    
    func fetchTechnologies() {
        
    }
}
