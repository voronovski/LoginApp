//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/17/22.
//

import UIKit

final class ProfileViewController: UIViewController {

    @IBOutlet var userPhoto: UIImageView! {
        didSet {
            userPhoto.layer.cornerRadius = userPhoto.frame.height / 2
        }
    }
    @IBOutlet var userFirstName: UILabel!
    @IBOutlet var userLastName: UILabel!
    @IBOutlet var userAge: UILabel!
    @IBOutlet var userCity: UILabel!
    @IBOutlet var userBio: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPhoto.image = UIImage(named: user.photo)
        title = user.userID
        userFirstName.text = user.firstName
        userLastName.text = user.lastName
        userAge.text = "age: " + String(user.age)
        userCity.text = "city: " + user.city
        userBio.text = user.bio
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photosVC = segue.destination as? PhotosViewController else { return }
        photosVC.user = user
    }
}
