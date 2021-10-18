//
//  CatFactView.swift
//  cats
//
//  Created by Sena Lee on 10/11/21.
//

import SwiftUI

struct CatFactView: View {
    @ObservedObject var catFactManager = CatFactManager()
    
    var body: some View {
        VStack{
            Spacer()
            if let catFact = catFactManager.catFact {
                Text(catFact.fact)
                    .padding()
                    .multilineTextAlignment(.center)
            } else {
                ProgressView()
            }
            Spacer()
            Rectangle()
                .foregroundColor(.init(uiColor: UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                .frame(height: 10)
        }
        .onAppear {
            catFactManager.getCatFact()
        }
    }
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
