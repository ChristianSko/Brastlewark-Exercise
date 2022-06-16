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
    
    enum CodingKeys: String, CodingKey {
        case id, name, thumbnail, age, weight, height
        case hairColor = "hair_color"
        case professions, friends
    }
}

