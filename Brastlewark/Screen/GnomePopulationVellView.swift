//
//  GnomePopulationVellView.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import SwiftUI

struct GnomePopulationCellView: View {
    
    let gnome: Brastlewark
    
    var body: some View {
        HStack {
            ThumbnailImageView(imageURLString: gnome.thumbnail)
                .frame(width: 100,
                       height: 100)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            VStack{
                Text(gnome.name)
                    .font(.headline)
                
                Text("Main job: \(gnome.professions.first ?? "Unemployed")")
                    .font(.body)
                
                Text("Total jobs: \(gnome.professions.count)")
            }
        }
    }
}

struct GnomePopulationCellView_Previews: PreviewProvider {
    static var previews: some View {
        GnomePopulationCellView(gnome: MockData.testGnome1)
    }
}
