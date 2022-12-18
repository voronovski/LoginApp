//
//  Alex.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/16/22.
//

let alex = User(userID: "Alex", password: "alexpass", photo: "alex.jpg",
                firstName: "Alex", lastName: "Voronovski", sex: .man,
                age: 35, city: "Seattle", region: .USA,
                bio: "Swiftbook student, happy father. I love coding, cooking and diving")

let julia = User(userID: "Julia", password: "juliapass", photo: "julia.jpg",
                 firstName: "Julia", lastName: "Voron", sex: .woman,
                 age: 35, city: "Moscow", region: .Russia,
                 bio: "Hairstylist with more than 15 years of experience")

let tim = User(userID: "Tim", password: "timpass", photo: "tim.jpg",
               firstName: "Tim", lastName: "Apple", sex: .other,
               age: 65, city: "Cupertino", region: .USA,
               bio: "Timothy Donald Cook is an American business executive who has been the chief executive officer of Apple Inc. since 2011. Cook previously served as the company's chief operating officer under its co-founder Steve Jobs.")

let users: [(userID: String, password: String)] = [
                                (alex.userID, alex.password),
                                (julia.userID, julia.password),
                                (tim.userID, tim.password)
                                ]
