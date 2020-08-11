//
//  ViewController.swift
//  youtube-appbuild
//
//  Created by RD on 7/11/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//
//create new instance of model class
 // Do any additional setup after loading the view.

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
   
    @IBOutlet weak var tableView: UITableView!
    
    
    var model = Model()
    var videos = [Video]()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //set itself as datasource and delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        model.getVideos()
        
    }
    
    //mark - tableview methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         <#code#>
     }
     
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }


}

