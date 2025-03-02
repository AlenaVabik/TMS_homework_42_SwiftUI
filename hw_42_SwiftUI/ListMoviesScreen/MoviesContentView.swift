//
//  ContentView.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 21.02.25.
//

import SwiftUI

struct MoviesContentView: View {
    let items: [MovieModel]

    var body: some View {
        
        List {
            ForEach(items, id: \.id) { item in
                Section {
                    ItemMovieCard(movieModel: item)
                }
            }
        }
        .scrollContentBackground(.hidden)
        .background(Color.primary)
    }
    
}

#Preview {
    let items = [
        MovieModel(image: "Image_miyadzaki", name: "Spirited away", duration: "125 Minutes", premiere: "31 Dec. 2002"),
        MovieModel(image: "AnoraImage", name: "Anora", duration: "125 Minutes", premiere: "21 May 2024"),
        MovieModel(image: "Substance", name: "Substance", duration: "141 Minutes", premiere: "19 May 2024"),
        MovieModel(image: "LordImage", name: "Lord of the Rings", duration: "178 Minutes", premiere: "21 Dec. 2001")
        ]
    
    MoviesContentView(items: items)
}
