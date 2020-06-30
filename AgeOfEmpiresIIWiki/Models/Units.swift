//
//  Units.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/29/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import Foundation
import SwiftUI

struct Units: Identifiable, Decodable {
    let id  = UUID()
    let name : String
    let description : String
    let age : String
    let cost: cost
    
}

struct cost :  Decodable {
    let wood  : Int
    let Food  : Int
    let stone : Int
    let Gold  : Int
}
