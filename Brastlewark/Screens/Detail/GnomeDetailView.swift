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
                .clipShape(Circle())
                .shadow(radius: 10)
            
            //TO DO: REFACTOR LIST WITH A FOREACH TO ITERATE ON ENUM
            
            List {
                Section(header: Text(GnomeDescriptor.name.rawValue)) {
                    Text(gnome.name)
                }
                
                Section(header: Text(GnomeDescriptor.height.rawValue)) {
                    Text("\(gnome.height, specifier: "%.2f") cm")
                }
                
                Section(header: Text(GnomeDescriptor.weight.rawValue)) {
                    Text("\(gnome.weight, specifier: "%.2f") kg")
                }
                
                Section(header: Text(GnomeDescriptor.age.rawValue)) {
                    Text("\(gnome.age) years")
                }
                
                Section(header: Text(GnomeDescriptor.hairColor.rawValue)) {
                    Text("\(gnome.hairColor)")
                }
                
                Section(header: Text(GnomeDescriptor.professions.rawValue)) {
                    ForEach(gnome.professions, id: \.self) { job in
                        Text(job)
                    }
                }
                
                Section(header: Text(GnomeDescriptor.friends.rawValue)) {
                    ForEach(gnome.friends, id: \.self) { friend in
                        Text(friend)
                    }
                }
            }
            .frame(height: 420)
            
        }
        .background(Color(UIColor.systemGray6))
    }
}

struct GnomeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GnomeDetailView(gnome: MockData.testGnome1)
    }
}


