//
//  Users.swift
//  LoginApp
//
//  Created by Aleksei Voronovskii on 12/16/22.
//

let alex = User(userID: "Alex", password: "alexpass", photo: "alex.jpg",
                firstName: "Aleksei", lastName: "Voronovski", sex: .man,
                age: 35, city: "Seattle", region: .USA,
                bio: "Swiftbook student, happy father. I love coding, cooking and diving. \nSwiftbook student, happy father. I love coding, cooking and diving. Swiftbook student. I love cooking and diving. Happy father. I love coding and diving. I love coding, cooking and diving. Swiftbook student, happy father.", photos: ["alex1.jpg", "alex2.jpg", "alex3.jpg"])

let julia = User(userID: "Julia", password: "juliapass", photo: "julia.jpg",
                 firstName: "Julia", lastName: "Voron", sex: .woman,
                 age: 35, city: "Moscow", region: .Russia,
                 bio: "Hairstylist with more than 15 years of experience.\nHairstylist with more than 15 years of experience. Hairstylist with more than 15 years of experience. Hairstylist with more than 15 years of experience. Hairstylist with more than 15 years of experience. Hairstylist with more than 15 years of experience.", photos: ["julia1.jpg", "julia2.jpg", "julia3.jpg"])

let tim = User(userID: "Tim", password: "timpass", photo: "tim.jpeg",
               firstName: "Timothy", lastName: "Apple", sex: .other,
               age: 65, city: "Cupertino", region: .USA,
               bio: "Timothy Donald Cook is an American business executive who has been the chief executive officer of Apple Inc. since 2011. Cook previously served as the company's chief operating officer under its co-founder Steve Jobs. Cook joined Apple in March 1998 as a senior vice president for worldwide operations, and then served as the executive vice president for worldwide sales and operations.[3] He was made the chief executive on August 24, 2011, prior to Jobs' death in October of that year.[4] During his tenure as the chief executive, he has advocated for the political reformation of international and domestic surveillance, cybersecurity, American manufacturing, and environmental preservation. Since 2011 when he took over Apple, to 2020, Cook doubled the company's revenue and profit, and the company's market value increased from $348 billion to $1.9 trillion.", photos: ["tim1.jpeg", "tim2.jpeg", "tim3.jpeg"])

let users = [alex, julia, tim]
