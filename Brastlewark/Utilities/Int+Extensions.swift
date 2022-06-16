//
//  Int+Extensions.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 16/6/22.
//

import Foundation

extension Int {
    
    // Used to make sure values of profession do not go below since we are using SF Symbols to show Number icons
    // SF Symbols numbers range from 0-9 and do not  have negative values
    
    var decreaseCount: Int {
        if self > 0 {
            return self - 1
        } else {
            return 0
        }
    }
}
