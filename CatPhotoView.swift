//
//  CatPhotoView.swift
//  cats
//
//  Created by Sena Lee on 10/11/21.
//

import SwiftUI

struct CatPhotoView: View {
    @ObservedObject var cpm = CatPhotoManager()
    var body: some View {
        VStack {
            Spacer()
            if let image = cpm.image {
                Image(uiImage: image)
            } else {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
            Spacer()
            Rectangle()
                .foregroundColor(.init(uiColor: UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                .frame(height: 10)
        }
            .onAppear {
                cpm.getCatPhoto()
            }
    }
}

struct CatPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        CatPhotoView()
    }
}
