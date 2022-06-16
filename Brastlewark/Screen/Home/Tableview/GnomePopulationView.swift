//
//  GnomePopulationView.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import SwiftUI

struct GnomePopulationView: View {
    @StateObject private var viewModel = GnomePopulationViewModel()
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack{
                List(viewModel.population, id: \.id) { gnome in
                    LazyVStack(alignment: .leading){
                        NavigationLink {
                            GnomeDetailView(gnome: gnome)
                        } label: {
                            GnomePopulationCellView(gnome: gnome)
                        }
                    }
                }
                .searchable(text: $searchText)
            }
            .listStyle(.plain)
            .task { await viewModel.loadData()}
            .refreshable { await viewModel.loadData() }
            .navigationTitle(Words.tableviewTitle)
            .onChange(of: searchText) { searchText in
             
                if !searchText.isEmpty {
                    viewModel.population = viewModel.population.filter{ $0.professions.contains(searchText)}
                } else {
                    viewModel.population = viewModel.population
                }
            }
            .background(Image(ImageName.grass))
        }
    }
}

struct GnomePopulationView_Previews: PreviewProvider {
    static var previews: some View {
        GnomePopulationView()
    }
}
