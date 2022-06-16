//
//  CellViewLabels.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import SwiftUI

struct CellViewLabels: View {
    
    let gnome: Brastlewark
    
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            
            Text(gnome.name)
                .font(.headline)
            
            Text("\(gnome.professions.first ?? "Unemployed")")
                .padding(.horizontal)
                .font(.body)
                .background(.green)
                .clipShape(Capsule())
            
            Label("More Professions", systemImage: "\(gnome.professions.count.decreaseCount).circle")
                .labelStyle(.titleAndIcon)
            
        }
    }
}

struct CellViewLabels_Previews: PreviewProvider {
    static var previews: some View {
        CellViewLabels(gnome: MockData.testGnome1)
    }
}
