//
//  ViewController.swift
//  youtube-appbuild
//
//  Created by RD on 7/11/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //create new instance of model class
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }


}

