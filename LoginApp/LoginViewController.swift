//
//  ViewController.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/6/22.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = "Alex"
    private let password = "Password"
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - View cycle
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = userNameTF.text ?? ""
    }

    // MARK: - IB Actions
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
            passwordTF.text = ""
            return
        }
    }
    
    @IBAction func forgotUserOrPasswordPressed(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(with: "Oops!", and: "Your name is \(user) 😉")
            : showAlert(with: "Oops!", and: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
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
