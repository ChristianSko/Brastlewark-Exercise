//
//  GnomeDetailView.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import SwiftUI

struct GnomeDetailView: View {
    
    let gnome: Brastlewark
    
    var body: some View {
        
        VStack{
            ThumbnailImageView(imageURLString: gnome.thumbnail)
                .scaledToFit()
                .frame(width: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 25,
                                            style: .continuous))
                .padding()
            
            List {
                Section(header: Text("Name")) {
                    Text(gnome.name)
                }
                
                Section(header: Text("Height")) {
                    Text("\(gnome.height, specifier: "%.2f")")
                }
                
                Section(header: Text("Weight")) {
                    Text("\(gnome.weight, specifier: "%.2f")")
                }
                
                Section(header: Text("Age")) {
                    Text("\(gnome.age)")
                }
                
                Section(header: Text("Hair Color")) {
                    Text("\(gnome.hairColor)")
                }
                
                Section(header: Text("Professions")) {
                    ForEach(gnome.professions, id: \.self) { job in
                        Text(job)
                    }
                }
                
                Section(header: Text("Friends")) {
                    ForEach(gnome.friends, id: \.self) { friend in
                        Text(friend)
                    }
                }
            }
            
        }
    }
}

struct GnomeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GnomeDetailView(gnome: MockData.testGnome2)
    }
}


