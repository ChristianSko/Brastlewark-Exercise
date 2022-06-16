//
//  GnomePopulationViewModel.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import Foundation

@MainActor
class GnomePopulationViewModel: ObservableObject {
    
    enum State {
        case na
        case loading
        case success
        case failed(error: Error)
    }
    
    @Published private(set) var state: State = .na
    
    let service: GnomePopulationService
    
    init(service: GnomePopulationService) {
        self.service = service
    }
    
    @Published var population = [Brastlewark]()
    @Published var filteredPopulation = [Brastlewark]()
    
    func getGnomes() async {
        self.state = .loading
        
        do {
            let gnomes = try await service.fetchData()
            self.state = .success
            population = gnomes
            filteredPopulation = gnomes
        } catch {
            self.state = .failed(error: error)
        }
    }
    
    func search(with query: String = "") {
        filteredPopulation = query.isEmpty ? population : population.filter({$0.name.contains(query)})
    }
}
