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
    let age: Int
    let city: String
    let bio: String
    let photos: [String]
    
    static func getUsers() -> [User] {
        [
            User(userID: "Alex", password: "alexpass", photo: "alex",
                 firstName: "Alex", lastName: "Voronovski", age: 35, city: "Seattle",
                 bio: "Swiftbook student, happy father. I love coding, cooking and diving.\n\nSwiftbook student, happy father. I love coding, cooking and diving. Swiftbook student. I love cooking and diving. Happy father. I love coding and diving. I love coding, cooking and diving. Swiftbook student, happy father.",
                 photos: ["alex1", "alex2", "alex3"]),
            User(userID: "Julia", password: "juliapass", photo: "julia",
                 firstName: "Julia", lastName: "Voron", age: 35, city: "Seattle",
                 bio: "Hairstylist with more than 15 years of experience.\n\nHairstylist with more than 15 years of experience. Hairstylist with more than 15 years of experience. Hairstylist with more than 15 years of experience. Hairstylist with more than 15 years of experience. Hairstylist with more than 15 years of experience.",
                 photos: ["julia1", "julia2", "julia3"]),
            User(userID: "Tim", password: "timpass", photo: "tim",
                 firstName: "Tim", lastName: "Cook", age: 65, city: "Cupertino",
                 bio: "Timothy Donald Cook is an American business executive who has been the chief executive officer of Apple Inc. since 2011. Cook previously served as the company's chief operating officer under its co-founder Steve Jobs. Cook joined Apple in March 1998 as a senior vice president for worldwide operations, and then served as the executive vice president for worldwide sales and operations.[3] He was made the chief executive on August 24, 2011, prior to Jobs' death in October of that year.",
                 photos: ["tim1", "tim2", "tim3"])
        ]
    }
}
