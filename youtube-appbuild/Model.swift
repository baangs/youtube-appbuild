//
//  Model.swift
//  youtube-appbuild
//
//  Created by RD on 7/12/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos() {
        //create url object, this points to api data endpoint
        let url = URL(string: Constants.apiUrl)
        
        guard url != nil else {
            return
        }
        
        //get url session object, does all networking
        let session = URLSession.shared
        
        //get a data task from session object, call to data api
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //check if any errors
            if error != nil || data == nil {
                return
            }
            
            do {
           
            //parsing data into video objects
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            
            let response = try decoder.decode(Response.self, from: data!)
            
            dump(response)
            }
            
            catch {
                
            }
        }
        
        //kick off the task
        dataTask.resume()
        
    }
}

var p = 0
