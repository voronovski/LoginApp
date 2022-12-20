//
//  User.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/13/22.
//

struct User {
    let userID: String
    let password: String
    let photo: String
    let firstName: String
    let lastName: String
    let sex: Sex
    let age: Int
    let city: String
    let region: Region
    let bio: String
    let photos: [String]
}

enum Sex {
    case man
    case woman
    case other
}

enum Region: Character {
    case Russia = "🇷🇺"
    case Europe = "🇪🇺"
    case Asia = "🇮🇳"
    case USA = "🇺🇸"
}
