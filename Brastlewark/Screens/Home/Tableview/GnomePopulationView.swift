//
//  GnomePopulationView.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import SwiftUI

struct GnomePopulationView: View {
    @StateObject private var viewModel = GnomePopulationViewModel(service: GnomePopulationService())
    @State private var query = ""
    
    //TO DO: Apply View based on VM State
    
    var body: some View {
        NavigationView{
            VStack{
                List(viewModel.filteredPopulation, id: \.id) { gnome in
                    LazyVStack(alignment: .leading){
                        NavigationLink {
                            GnomeDetailView(gnome: gnome)
                        } label: {
                            GnomePopulationCellView(gnome: gnome)
                        }
                    }
                }
                .searchable(text: $query, prompt: "Search by Profession")
            }
            .navigationTitle(Words.tableviewTitle)
            .listStyle(.plain)
            .background(Image(ImageName.grass))
            .task { await viewModel.getGnomes()}
            .refreshable { await viewModel.getGnomes()}
            .onChange(of: query) { newQuery in
                viewModel.search(with: newQuery)
            }
        }
    }
}

struct GnomePopulationView_Previews: PreviewProvider {
    static var previews: some View {
        GnomePopulationView()
    }
}
