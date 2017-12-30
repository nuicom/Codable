//
//  Photo.swift
//  CodableProject
//
//  Created by Metas Umsuwan on 30/12/2560 BE.
//  Copyright © 2560 Metas Umsuwan. All rights reserved.
//

import Foundation

struct Photo : Codable {
    
    var title : String?
    var url : URL
    var isSample : Bool
    var metaData : [String:String]
    var type : PhotoType
    var size : Size
    
    enum CodingKeys: String, CodingKey {
        case title = "name"
        case url
        case isSample
        case metaData
        case type
        case size
    }
}

struct Size : Codable {
    var height : Double
    var width : Double
}

enum PhotoType : String , Codable {
    case flower
    case animal
    case fruit
    case vegatable
}
