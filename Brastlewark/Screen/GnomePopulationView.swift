//
//  GnomePopulationView.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import SwiftUI

struct GnomePopulationView: View {
    @StateObject private var viewModel = GnomePopulationViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.population, id: \.id) { gnome in
                VStack{
                    Text(gnome.name)
                        .font(.headline)
                }
            }
            .task { await viewModel.loadData() }
            .refreshable { await viewModel.loadData() }
            .navigationTitle("Gnome Population")
        }
    }
}

struct GnomePopulationView_Previews: PreviewProvider {
    static var previews: some View {
        GnomePopulationView()
    }
}
