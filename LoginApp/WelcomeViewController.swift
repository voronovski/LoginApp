//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/6/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    var welcome = ""
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, " + welcome + "!"
        
    }

    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
