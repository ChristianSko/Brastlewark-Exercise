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
        VStack(alignment: .center){
            
            Text(gnome.name)
                .font(.headline)
            
            Label("Professions", systemImage: "\(gnome.professions.count).circle")
                .labelStyle(.titleAndIcon)
            
            Text("\(gnome.professions.first ?? "Unemployed")")
                .padding(.horizontal)
                .font(.body)
                .background(.green)
                .clipShape(Capsule())
        }
    }
}

struct CellViewLabels_Previews: PreviewProvider {
    static var previews: some View {
        CellViewLabels(gnome: MockData.testGnome1)
    }
}
