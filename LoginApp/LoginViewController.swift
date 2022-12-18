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
    
    private var userID = ""
    private var password = ""
    private var credentials = (userID: "", password: "")
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - View cycle
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        guard let welcomeVC = viewControllers.first as? WelcomeViewController else { return }
        
        guard let foundUser = findUser(with: userID) else { return }
        welcomeVC.userFirstName = foundUser.firstName
        welcomeVC.userLastName = foundUser.lastName
    }

    // MARK: - IB Actions
    @IBAction func logInButtonPressed() {
        userID = userNameTF.text ?? ""
        password = passwordTF.text ?? ""
        credentials = (userID: userID, password: password)
        
        guard !listOfCredentials.contains(where: {$0 == credentials}) else { return }
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            passwordTF.text = ""
    }
    
    @IBAction func forgotUserOrPasswordPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(alex.userID) or \(julia.userID) or \(tim.userID) 😉")
            : showAlert(title: "Oops!", message: "Your password is \(alex.password) or \(julia.password) or \(tim.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func findUser(with userID: String) -> User? {
        return users.first(where: { $0.userID == userID })
    }
}
