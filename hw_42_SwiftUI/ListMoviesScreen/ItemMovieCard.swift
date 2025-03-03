//
//  ItemMovieCardView.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 2.03.25.
//

import SwiftUI

struct ItemMovieCard: View {
    var movieModel: MovieModel
    @State var isHeartSelected: Bool = false

    var body: some View {
        HStack(alignment: .top) {
            Image(movieModel.image)
                    .resizable()
            
                    .frame(maxWidth: 140, maxHeight: 200)
                    .cornerRadius(10)
                    .padding(.leading, 15)

            VStack(alignment: .leading) {
                Text(movieModel.name)
                    .bold()
                    .font(.system(size: 25))
                    .frame(width: 170, alignment: .topLeading)
                Label(movieModel.duration, systemImage: "clock.fill")
                    .font(.callout)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                Label(movieModel.premiere, systemImage: "calendar")
                    .font(.callout)
                    .foregroundColor(.gray)
                HStack {
                    Image(systemName: "film.fill")
                        .font(.callout)
                        .foregroundColor(.gray)
                    Button("Action") {
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.leading, 10)
                }
                .padding(.leading, 3)
            }
            .frame(maxWidth: .infinity, maxHeight: 180, alignment: .center)

            Button(action: {
                self.isHeartSelected.toggle()
            })  {
                Image(systemName: isHeartSelected ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 15, height: 12)
                    .foregroundColor(.red)
                    .padding(.trailing, 15)
            }
            .padding(5)
        }
        .cornerRadius(10)
        .frame(maxWidth: .infinity, maxHeight: 180, alignment: .center)

    }
}
