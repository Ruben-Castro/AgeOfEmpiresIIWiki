//
//  Cost.swift
//  AgeOfEmpiresIIWiki
//
//  Created by Ruben Castro Espinoza on 6/30/20.
//  Copyright © 2020 Ruben Castro Espinoza. All rights reserved.
//

import Foundation
import SwiftUI

struct Cost :  Decodable, Hashable {
    let Wood  : Int?
    let Food  : Int?
    let Stone : Int?
    let Gold  : Int?
}
