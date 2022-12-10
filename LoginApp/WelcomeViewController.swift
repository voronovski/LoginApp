//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/6/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome: String!
    let userName = ""
    let password = ""
    
    // MARK: - View cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, " + welcome + "!"
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
