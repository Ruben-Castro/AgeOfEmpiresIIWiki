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
    @Published var units = UnitsData(units: [Unit]())
    @Published var tech =  TechnologiesData(technologies: [Tech]())
    
    init() {
        fetchCivilizations()
        fetchUnits()
        fetchTechnologies()
    }
    
    private func fetchCivilizations() {
        // fetch json decode and update array property
        guard let url = URL(string: apiURL + "civilizations") else{ return }
            
        URLSession.shared.dataTask(with: url) { (data,res,err) in
            if err != nil {
                print(err!)
            }
            guard let safeData = data else {return}
            
            print((String(data: safeData, encoding: String.Encoding.utf8)!))
            DispatchQueue.main.async {
                self.civilizations = try! JSONDecoder().decode(CivilizationsData.self, from: safeData)
                
                
            }
            
        }.resume()
    }
    
    private func fetchUnits() {
        print("inside fetch Units")
        
        guard let url = URL(string: apiURL + "units") else {return}
        
        URLSession.shared.dataTask(with: url) {(data,res,err) in
            if err != nil {
                print(err!)
            }
            if res != nil {
                print(res!)
            }
            guard let safeData = data else {return}
            
            print((String(data: safeData, encoding: String.Encoding.utf8)!))
            
            DispatchQueue.main.async {
                self.units = try! JSONDecoder().decode(UnitsData.self, from: safeData)
            }
        }.resume()
        print("left fetch units")
        
    }
    
    private func fetchTechnologies() {
        guard let url = URL(string: apiURL + "technologies") else {return}
        
        URLSession.shared.dataTask(with: url) {(data,res,err) in
            if err != nil {
                print(err!)
            }
            if res != nil {
                print(res!)
            }
            guard let safeData = data else {return}
            
            print((String(data: safeData, encoding: String.Encoding.utf8)!))
            
            DispatchQueue.main.async {
                self.tech = try! JSONDecoder().decode(TechnologiesData.self, from: safeData)
            }
        }.resume()
        print("left fetch units")
        
        
    }
    
    
}
