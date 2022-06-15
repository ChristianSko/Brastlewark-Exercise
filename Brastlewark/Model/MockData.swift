//
//  MockData.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import Foundation


struct MockData {
    static let testGnome1 = Brastlewark(id: 0,
                                       name: "Gimli Gloin",
                                       thumbnail: "http://www.publicdomainpictures.net/pictures/10000/nahled/1-1193219094.jpg",
                                       age: 213,
                                       weight: 180,
                                       height: 1.34,
                                       hairColor: "Black",
                                       professions: ["Blacksmith", "Actor"],
                                       friends: ["Cogwitz Bittergil"])
    
    static let testGnome2 = Brastlewark(id: 0,
                                       name: "Gimli Gloin",
                                       thumbnail: "http://www.publicdomainpictures.net/pictures/10000/nahled/1-1193219094.jpg",
                                       age: 213,
                                       weight: 180,
                                       height: 1.34,
                                       hairColor: "Black",
                                       professions: ["Blacksmith", "Actor"],
                                       friends: ["Cogwitz Bittergil", "Nemo", "Gandalf"])
}
