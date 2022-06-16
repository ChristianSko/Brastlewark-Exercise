//
//  SplasView.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import SwiftUI

struct SplashView: View {

    var body: some View {
        
        ZStack {
            Image(ImageName.splash)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(Words.splashWelcome)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.green)
                
                Spacer()
            }
        }
    }
}

struct SplasView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
