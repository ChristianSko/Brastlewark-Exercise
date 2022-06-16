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
        case success(data: [Brastlewark])
        case failed(error: Error)
    }
    
    private let service: GnomePopulationService
    
    init(service: GnomePopulationService) {
        self.service = service
    }
    
    @Published var population = [Brastlewark]()
    @Published private(set) var state: State = .na
    
    func getGnomes() async {
        self.state = .loading
        
        do {
            let gnomes = try await service.fetchData()
            self.state = .success(data: gnomes)
            population = gnomes
        } catch {
            self.state = .failed(error: error)
        }
    }
}
