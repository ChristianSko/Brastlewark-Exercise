//
//  Brastlewark .swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import Foundation

struct Response: Codable {
    let Brastlewark: [Brastlewark]
}

struct Brastlewark: Codable, Identifiable {
    let id: Int
    let name: String
    let thumbnail: String
    let age: Int
    let weight: Double
    let height: Double
    let hairColor: String
    let professions : [String]
    let friends: [String]
    
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case thumbnail
        case age
        case weight
        case height
        case hairColor
        case professions
        case friends
    }
}

