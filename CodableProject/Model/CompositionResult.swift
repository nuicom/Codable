//
//  CompositionResult.swift
//  CodableProject
//
//  Created by Metas Umsuwan on 31/12/2560 BE.
//  Copyright © 2560 Metas Umsuwan. All rights reserved.
//

import Foundation

struct CompositionResult : Codable {
    var totalAmount2 : Double?
    var compositions : [Composition]?
    
    enum CodingKeys : String ,CodingKey {
        case totalAmount2
        case compositions
    }
}
