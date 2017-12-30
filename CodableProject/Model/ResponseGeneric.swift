//
//  ResponseGeneric.swift
//  CodableProject
//
//  Created by Metas Umsuwan on 30/12/2560 BE.
//  Copyright © 2560 Metas Umsuwan. All rights reserved.
//

import Foundation

struct ResponseGeneric<T> where T : Codable {
    var result : T?
    var results : [T]?
    var message : String?
    
    enum CodingKeys : String , CodingKey {
        case result
        case results
        case message
    }
}

extension ResponseGeneric : Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        if values.contains(.result){
            result = try values.decode(T.self, forKey: .result)
        }
        if values.contains(.results){
            results = try values.decode([T].self, forKey: .results)
        }
        if values.contains(.message){
            message = try values.decode(String.self, forKey: .message)
        }
    }
}

