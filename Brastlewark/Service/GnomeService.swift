//
//  GnomeService.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 16/6/22.
//

import Foundation

struct GnomePopulationService {
    
    enum GnomePopulationServiceError: Error {
        case failed
        case failedToDecode
        case invalidStatusCode
        case invalidURL
        case invalidData
    }
    
    func fetchData() async throws -> [Brastlewark] {
         
        guard let url = URL(string: "https://raw.githubusercontent.com/rrafols/mobile_test/master/data.json") else {
            print("Invalid URL")
            throw GnomePopulationServiceError.invalidURL
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                print("Invalid Server Response")
                throw GnomePopulationServiceError.invalidStatusCode
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            if let decodedResponse = try? decoder.decode(Response.self, from: data) {
                return decodedResponse.Brastlewark.sorted(by: { $0.name < $1.name })
            }
            
        } catch {
            throw GnomePopulationServiceError.invalidData
        }
        
        return []
    }
    
}
