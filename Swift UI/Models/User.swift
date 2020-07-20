//
//  User.swift
//  Swift UI
//
//  Created by Shahzaib Kafayit on 6/9/20.
//  Copyright © 2020 Shahzaib Kafayit. All rights reserved.
//

import Foundation

struct User: Identifiable {
    var id: Int
    let username, userDetails, image: String
}
var users: [User] = [
    .init(id: 0, username: "Annie", userDetails: "You can use this approach to create loops of any type. For example, this code creates an array of three colors, loops over", image: "abc"),
    .init(id: 1, username: "Alex", userDetails: "You can use this approach to create loops of any type. For example, this code creates an array of three colors, loops over", image: "car"),
    .init(id: 2, username: "Jeeny", userDetails: "You can use this approach to create loops of any type. For example, this code creates an array of three colors, loops over", image: "car2"),
    .init(id: 3, username: "Maria", userDetails: "You can use this approach to create loops of any type. For example, this code creates an array of three colors, loops over", image: "car3"),
    .init(id: 4, username: "James", userDetails: "You can use this approach to create loops of any type. For example, this code creates an array of three colors, loops over", image: "wick")
]
