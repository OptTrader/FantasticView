//
//  FantasticView.swift
//  FantasticView
//
//  Created by Chris Kong on 10/3/16.
//  Copyright © 2016 Chris Kong. All rights reserved.
//

import UIKit

class FantasticView: UIView {

    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // The Main Stuff
        let scheduledColorChange = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            UIView.animate(withDuration: 2.0) {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter += 1
            }
        }
        scheduledColorChange.fire()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // You don't need to implement this
    }
}
