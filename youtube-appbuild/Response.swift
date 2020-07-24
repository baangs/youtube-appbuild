//
//  Response.swift
//  youtube-appbuild
//
//  Created by RD on 7/17/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

import Foundation

struct Response : Decodable {
    
    var items: [Video]?
    
    enum CodingKeys: String, CodingKey {
        case items
    }
    
    init (from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
    }
}


