//
//  ViewController.swift
//  FantasticView
//
//  Created by Chris Kong on 10/3/16.
//  Copyright © 2016 Chris Kong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fantasticView = FantasticView(frame: self.view.bounds)
        self.view.addSubview(fantasticView)
    }

}
