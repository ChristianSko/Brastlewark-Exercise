//
//  ThumbnailImageView.swift
//  Brastlewark
//
//  Created by Skorobogatow, Christian on 15/6/22.
//

import SwiftUI

struct ThumbnailImageView: View {
    let imageURLString: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageURLString)) { image in
            image
                .resizable()
            
        } placeholder: {
            ProgressView()
        }
    }
}

struct ThumbnailImageView_Previews: PreviewProvider {
    static var previews: some View {
        ThumbnailImageView(imageURLString: "http://www.publicdomainpictures.net/pictures/10000/nahled/1-1193219094.jpg")
    }
}
