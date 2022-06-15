//
//  HomeView.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var splashIsActive = false
    var body: some View {
        ZStack{
            if !self.splashIsActive {
                SplashView()
            } else {
                GnomePopulationView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.splashIsActive = true
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
