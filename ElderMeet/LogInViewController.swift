//
//  ViewController.swift
//  ElderMeet - No Database
//
//  Created by Lim JunQuan Ryan on 23/10/18.
//  Copyright © 2018 Ryan Lim. All rights reserved.
//

import UIKit

var loginUsername = ""
var username = loginUsername

class LogInViewController: UIViewController {

    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    var loginPassword = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func signupButtonPressed(_ sender: Any) {
        let signupAlert = UIAlertController(title: "Sign up", message: "", preferredStyle: .alert)
        signupAlert.addTextField { (textField) in
            textField.placeholder = "Username"
        }
        signupAlert.addTextField { (textField) in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        }
        
        let signupAlertAction = UIAlertAction(title: "Sign up", style: .default) { (_) in
            let usernameField = signupAlert.textFields![0]
            let passwordField = signupAlert.textFields![1]
            
            if let username = usernameField.text, let password = passwordField.text {
                loginUsername = username
                self.loginPassword = password
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        signupAlert.addAction(signupAlertAction)
        signupAlert.addAction(cancelAction)
        present(signupAlert, animated: true, completion: nil)
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if usernameTextField.text != loginUsername || passwordTextField.text != loginPassword || loginUsername == "" || loginPassword == ""{
            let errorAlert = UIAlertController(title: "Error", message: "Your Username or Password is wrong", preferredStyle: .alert)
            let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
            errorAlert.addAction(dismissAction)
            present(errorAlert, animated: true, completion: nil)
        }
    }
}

