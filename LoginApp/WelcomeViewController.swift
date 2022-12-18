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
    
    var user: User!
    
    // MARK: - View cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user.firstName) \(user.lastName)!"
        gradientLayer()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationController = segue.destination as? UINavigationController else { return }
        let viewControllers = navigationController.viewControllers
        guard let navigationVC = viewControllers.first as? NavigationController else { return }
        navigationVC.user = user
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
