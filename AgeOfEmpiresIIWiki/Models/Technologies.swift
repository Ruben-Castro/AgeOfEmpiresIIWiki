//
//  Technologies.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/30/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import Foundation
import SwiftUI

struct TechnologiesData: Decodable, Hashable {
    let technologies: [Tech]
}

struct Tech: Decodable, Identifiable, Hashable {
    let id = UUID()
    let name: String
    let description: String
    let age: String
    let cost: Cost
    
}


