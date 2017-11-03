//
//  FieldObservationsJSONParser.swift
//  Field Survey
//
//  Created by Kevin Fritz on 10/31/17.
//  Copyright © 2017 Kevin Fritz. All rights reserved.
//

import Foundation

class FieldObservationsJSONParser {
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [Observation] {
        var observations = [Observation]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let observationsFromJSON = root["observations"] as? [Any] {
                for observation in observationsFromJSON {
                    if let observation = observation as? [String: String] {
                        if let classification = observation["classification"],
                            let title = observation["matchup"],
                            let description = observation["description"],
                            let dateString = observation["date"],
                            let date = dateFormatter.date(from: dateString) {
                            
                            if let observation = Observation(classificationString: classification, title: title, description: description, date: date){
                                observations.append(observation)
                            }
                        }
                    }
                }
            }
            
        }
        
        return observations
    }
}


