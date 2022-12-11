//
//  ViewController.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/6/22.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = "Alex"
    private let password = "Password"
        
    // MARK: - View cycle
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userNameTF.resignFirstResponder()
        passwordTF.resignFirstResponder()
        
        super .touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcome = userNameTF.text ?? ""
    }

    // MARK: - IB Actions
    @IBAction func logInButtonPressed() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotUserOrPasswordPressed(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(with: "Oops!", and: "Your name is Alex 😉")
            : showAlert(with: "Oops!", and: "Your password is Password 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let welcomeVC = segue.source as? WelcomeViewController else { return }
        userNameTF.text = welcomeVC.userName
        passwordTF.text = welcomeVC.password
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
