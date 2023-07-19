//
//  User.swift
//  swift_todo
//
//  Created by Jan Koczuba on 19/07/2023.
//

import Foundation

struct User: Codable{
    let id: String
    let email: String
    let joined: TimeInterval
}
