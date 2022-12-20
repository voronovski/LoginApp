//
//  PhotosViewController.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/18/22.
//

import UIKit

final class PhotosViewController: UIViewController {

    @IBOutlet var photoOneImageView: UIImageView!
    @IBOutlet var photoTwoImageView: UIImageView!
    @IBOutlet var photoThreeImageView: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoOneImageView.image = UIImage(named: user.photos[0])
        photoTwoImageView.image = UIImage(named: user.photos[1])
        photoThreeImageView.image = UIImage(named: user.photos[2])
    }
    
}
