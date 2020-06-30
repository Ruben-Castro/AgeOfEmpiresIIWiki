//
//  Units.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/29/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import Foundation
import SwiftUI


struct UnitsData: Hashable, Decodable {
    
    
    let units:[Unit]
}

struct Unit: Identifiable, Decodable, Hashable {
    let id  = UUID()
    let name : String
    let description : String
    let age : String
    let cost: Cost
    
}

struct Cost :  Decodable, Hashable {
    let Wood  : Int?
    let Food  : Int?
    let Stone : Int?
    let Gold  : Int?
}
