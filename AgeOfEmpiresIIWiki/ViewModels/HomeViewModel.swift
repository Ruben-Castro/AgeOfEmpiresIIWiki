//
//  HomeViewModel.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/29/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import SwiftUI
import Foundation
// its an open api so no hiding necessary

let apiURL = "https://age-of-empires-2-api.herokuapp.com/api/v1/"

class HomeViewModel: ObservableObject {
    
    @Published var civilizations  = CivilizationsData(civilizations: [Civilization]())
    @Published var units = []
    @Published var tech = []
    
    init() {
        fetchCivilizations()
    }
    
    private func fetchCivilizations() {
        // fetch json decode and update array property
        guard let url = URL(string: apiURL + "civilizations") else{ return }
            
        URLSession.shared.dataTask(with: url) { (data,res,err) in
            if err != nil {
                print(err!)
            }
            guard let safeData = data else {return}
            
            print(String(data: safeData, encoding: String.Encoding.utf8)!)
            DispatchQueue.main.async {
                self.civilizations = try! JSONDecoder().decode(CivilizationsData.self, from: safeData)
                
                
            }
            
        }.resume()
    }
    
    private func fetchUnits() {
        
        
    }
    
    private func fetchTechnologies() {
        
    }
    
    
}
