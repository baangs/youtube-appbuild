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
        let dataTask = session.dataTask(with: url!) { (data, respoonse, error) in
            
            //check if any errors
            if error != nil || data == nil {
                return
            }
            
           
            //parsing data into video objects
        }
        
        //kick off the task
        dataTask.resume()
        
    }
}

var x = 1

var b = 0

var t = 9

var p = 1

var i = 0
