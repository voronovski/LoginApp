//
//  UserViewController.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/17/22.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userFirstName: UILabel!
    @IBOutlet var userLastName: UILabel!
    @IBOutlet var userBio: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func viewGalleryButtonPressed() {
    }
    
}
