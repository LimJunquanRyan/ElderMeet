//
//  ViewController.swift
//  ElderMeet
//
//  Created by Lim JunQuan Ryan on 22/10/18.
//  Copyright © 2018 Ryan Lim. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showAlert(message:String)
    {
    let alert = UIAlertController(title: message, message: "", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    self.present(alert, animated: true)
    }
    
    @IBAction func signupButtonPressed(_ sender: Any) {
        if ((usernameTextField.text == "") || (passwordTextField.text == "")) {
            self.showAlert(message: "All fields are mandatory!")
            return
        }
        else {
            Auth.auth().createUser(withEmail: usernameTextField.text!, password: passwordTextField.text!) {
            (authResult, error) in
            if ((error == nil)) {
                self.showAlert(message: "Signup Successful!")
            }
            else {
                self.showAlert(message: ("Signup Unsuccessful..."))
            }
        }
        }
    }


}

