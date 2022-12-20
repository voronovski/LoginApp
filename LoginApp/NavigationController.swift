//
//  NavigationControllerViewController.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/17/22.
//

import UIKit

class NavigationController: UINavigationController {

    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(user!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let profileVC = segue.destination as? ProfileViewController else { return }
        profileVC.user = user
        print(profileVC.user!)
    }
    
}
