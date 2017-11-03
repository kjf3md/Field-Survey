//
//  FieldObservationsJSONLoader.swift
//  Field Survey
//
//  Created by Kevin Fritz on 10/31/17.
//  Copyright © 2017 Kevin Fritz. All rights reserved.
//

import Foundation


class FieldObservationsJSONLoader {
    
    class func load(fileName: String) -> [Observation]{
        var observations = [Observation]()
        if  let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = FieldObservationsJSONParser.parse(data)
        }
        return observations
    }
}
