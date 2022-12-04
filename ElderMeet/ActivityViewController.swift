//
//  ActivityViewController.swift
//  ElderMeet - No Database
//
//  Created by Lim JunQuan Ryan on 23/10/18.
//  Copyright © 2018 Ryan Lim. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet var activityPickerView: UIPickerView!
    var activities: [String] = [String]()
    var activity = ""
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activities[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return activities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        activity = activities[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.activityPickerView.delegate = self
        self.activityPickerView.dataSource = self
        
        activities = ["Tai Chi", "Mass Dance", "Walkathon", "Yoga"]
        // Do any additional setup after loading the view.
    }
    @IBAction func confirmationActivityButton(_ sender: Any) {
        performSegue(withIdentifier: "h", sender: nil)
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! LocationDateTimeViewController
        destination.activity = activity
    }
 

}
