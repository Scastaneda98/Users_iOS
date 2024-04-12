//
//  Address.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import Foundation

struct Address: Codable {
    let street, suite, city, zipcode: String
    let geo: Geo
}
