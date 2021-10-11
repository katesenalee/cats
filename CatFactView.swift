//
//  CatFactView.swift
//  cats
//
//  Created by Sena Lee on 10/11/21.
//

import SwiftUI

struct CatFactView: View {
    var body: some View {
        Text("Cat fact view")
            .onAppear {
                let catFactManager = CatFactManager()
                catFactManager.getCatFact()
            }
    }
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
