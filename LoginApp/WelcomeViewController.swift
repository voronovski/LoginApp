//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/6/22.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    // MARK: - View cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(userName ?? "User")!"
        gradientLayer()
    }
    
    // MARK: - Gradient layer
    private func gradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor
        ]
        gradientLayer.opacity = 0.6
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
