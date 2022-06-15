//
//  GnomePopulationViewModel.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import Foundation


class GnomePopulationViewModel: ObservableObject {
    
    @Published var population = [Brastlewark]()
    
    @MainActor
    func loadData() async {
         
        guard let url = URL(string: "https://raw.githubusercontent.com/rrafols/mobile_test/master/data.json") else { return }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                print("Invalid Server Response")
                return
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            if let decodedResponse = try? decoder.decode(Response.self, from: data) {
                population = decodedResponse.Brastlewark.sorted(by: { $0.name < $1.name })
            }
            
        } catch {
            print("Invalid data")
        }
    }
}
