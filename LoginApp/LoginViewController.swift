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
    private var user: User!
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - View cycle
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let foundUser = findUser(with: userID) else { return }
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = foundUser
            } else if let navigationVC = viewController as? UINavigationController {
                guard let profileVC = navigationVC.topViewController as? ProfileViewController else { return }
                profileVC.user = foundUser
            }
        }
    }

    // MARK: - IB Actions
    @IBAction func logInButtonPressed() {
        userID = userNameTF.text ?? ""
        password = passwordTF.text ?? ""
        guard let foundUser = findUser(with: userID), passwordTF.text == foundUser.password else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            passwordTF.text = ""
            return
        }
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
