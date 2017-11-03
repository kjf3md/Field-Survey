//
//  FieldObservationsDetailedViewController.swift
//  Field Survey
//
//  Created by Kevin Fritz on 11/2/17.
//  Copyright © 2017 Kevin Fritz. All rights reserved.
//

import UIKit

class FieldObservationsDetailedViewController: UIViewController {
    
    var fieldObservation: Observation?
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var fieldObservationIconImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionTextArea: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Observation"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        fieldObservationIconImageView.image = fieldObservation?.classification.image
        titleLabel.text = fieldObservation?.title
        descriptionTextArea.text = fieldObservation?.description
        
        if let date = fieldObservation?.date{
            dateLabel.text = dateFormatter.string(from: date)
        }else{
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
