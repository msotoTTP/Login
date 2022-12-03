//
//  ViewController.swift
//  Login
//
//  Created by Matthew Soto on 12/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //textbook solution
//        if let senderButton = sender as? UIButton {
//            if senderButton == forgotUsernameButton {
//                segue.destination.navigationItem.title = "Forgot Username"
//            } else if senderButton == forgotPasswordButton {
//                segue.destination.navigationItem.title = "Forgot Password"
//            } else {
//                segue.destination.navigationItem.title = usernameTextField.text
//            }
//        }
        
        //alternate solution
        switch segue.identifier {
        case "Username":
            segue.destination.navigationItem.title = "Forgot Username"
        case "Password":
            segue.destination.navigationItem.title = "Forgot Password"
        default:
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
}

