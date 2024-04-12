//
//  User.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: Int
    let name, username, email: String
    let address: Address
    let phone, website: String
    let company: Company
}
