//
//  RequestGeneric.swift
//  CodableProject
//
//  Created by Metas Umsuwan on 30/12/2560 BE.
//  Copyright © 2560 Metas Umsuwan. All rights reserved.
//

import Foundation

struct RequestGeneric<T> where T : Codable {
    var request : T
    var message : String = "test"

    enum CodingKeys : String , CodingKey {
        case request
    }
}

extension RequestGeneric : Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(request, forKey: .request)
    }
}

extension RequestGeneric : Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        request = try values.decode(T.self, forKey: .request)
    }
}
