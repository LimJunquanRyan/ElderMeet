//
//  LocationDateTimeViewController.swift
//  ElderMeet - No Database
//
//  Created by Lim JunQuan Ryan on 23/10/18.
//  Copyright © 2018 Ryan Lim. All rights reserved.
//

import UIKit

class LocationDateTimeViewController: UIViewController {

    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var DateTimePicker: UIDatePicker!
    
    var activity = String()
    var location = ""
    var dateTime = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmationButton(_ sender: Any) {
        if locationTextField.text != "" {
            location = locationTextField.text!
        }
        else {
            let alert = UIAlertController(title: "Please provide a location", message: "", preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Location"
            }
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        DateTimePicker.minimumDate = Date.init()
        dateTime = dateFormatter.string(from: DateTimePicker.date)
        performSegue(withIdentifier: "sth1", sender: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! EventsTableViewController
        destination.activity = activity
        destination.location = location
        destination.dateTime = dateTime
    }

}
