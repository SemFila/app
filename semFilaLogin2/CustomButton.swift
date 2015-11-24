//
//  CustomButton.swift
//  semFilaLogin2
//
//  Created by Student on 11/24/15.
//  Copyright © 2015 GENiOS. All rights reserved.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 5.0
        self.layer.borderColor = UIColor.yellowColor().CGColor
        self.layer.backgroundColor = UIColor.yellowColor().CGColor
        self.layer.borderWidth = 1.5
        self.tintColor = UIColor.blackColor()
    }
    
}