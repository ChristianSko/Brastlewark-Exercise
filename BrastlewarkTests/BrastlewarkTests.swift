//
//  BrastlewarkTests.swift
//  BrastlewarkTests
//
//  Created by Skorobogatow, Christian on 14/6/22.
//

import XCTest
@testable import Brastlewark

class BrastlewarkTests: XCTestCase {
    
    func testReceivedGnomes() async throws {
        let service = GnomePopulationService()
        let viewModel = await GnomePopulationViewModel(service: service)
        var results = [Brastlewark]()
        
        if let fetched = try? await viewModel.service.fetchData() {
            results = fetched
        }
        
        XCTAssert(results.count > 0)
    
    }
}
