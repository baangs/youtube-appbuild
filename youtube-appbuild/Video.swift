//
//  Video.swift
//  youtube-appbuild
//
//  Created by RD on 7/12/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

import Foundation

struct Video : Decodable {
    
    var snippet = ""
    var high = ""
    var thumbnails = ""
    var resourceId = ""
    
    var videoId = ""
    var title = ""
    var description = ""
    var published = Date()
    var thumbnail = ""
    
    
    //specifying keys, codingkeys protocol
    enum CodingKeys : String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
    }
    
    
    //initializing the decoder class for decodable JSON, set json container to constant
    init (decoder: Decoder) throws {
       let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        //Parse/Grab title, assign to property using self and try
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        //Parse/Grab description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        //Parse/Grab publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        //Parse thumnails from nested container
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
          let highContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnails)
        
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .videoId)
        
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
    }

    
}





















