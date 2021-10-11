//
//  ContentView.swift
//  cats
//
//  Created by Sena Lee on 10/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatFactView()
                .tabItem {
                    Label("Facts", systemImage: "lightbulb")
                }
            CatPhotoView()
                .tabItem {
                    Label("photos", systemImage: "photo")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
