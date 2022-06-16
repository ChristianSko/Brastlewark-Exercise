//
//  Constants.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 16/6/22.
//

import Foundation
import SwiftUI


enum ImageName {
    static let grass = "grass"
    static let splash = "gnome-splash"
}

enum Words  {
    static let tableviewTitle = "GnoPulation"
    static let moreProfessions = "More Professions"
    static let splashWelcome =  "GNOPE TODAY!"
   
}

enum GnomeDescriptor: String, CaseIterable{
    case name
    case height
    case weight
    case age
    case hairColor
    case professions
    case friends
}
