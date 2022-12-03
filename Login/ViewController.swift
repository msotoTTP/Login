//
//  ViewController.swift
//  Login
//
//  Created by Matthew Soto on 12/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        if let username = usernameTextField.text, let password = passwordTextField.text {
            if !username.isEmpty && !password.isEmpty {
                performSegue(withIdentifier: "Login", sender: sender)
            }
        }
    }
    
}

