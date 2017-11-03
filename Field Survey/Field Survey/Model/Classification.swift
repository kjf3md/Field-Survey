//
//  Classification.swift
//  Field Survey
//
//  Created by Kevin Fritz on 10/31/17.
//  Copyright © 2017 Kevin Fritz. All rights reserved.
//

import UIKit


enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}

