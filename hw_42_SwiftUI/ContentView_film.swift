//
//  ContentView.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 21.02.25.
//

import SwiftUI

struct ContentViewFilm: View {
    @State var isHeartSelected: Bool = false

    var body: some View {
        HStack(alignment: .top) {
            Image("Image_miyadzaki")
                    .resizable()
                    .frame(maxWidth: 150, maxHeight: 200, alignment: .leading)
                    .cornerRadius(10)
                    .padding(.trailing, 10)
            VStack(alignment: .leading) {
                Text("Spirited away")
                    .bold()
                    .font(.system(size: 25))
                    .frame(width: 170, alignment: .topLeading)
                Label("125 Minutes", systemImage: "clock.fill")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                Label("31 Dec. 2002", systemImage: "calendar")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                HStack {
                    Image(systemName: "film.fill")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    Button("Action") {
                        
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding(.top, 5)
            }

            Button(action: {
                self.isHeartSelected.toggle()
            })  {
                Image(systemName: isHeartSelected ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 15, height: 12)
                    .foregroundColor(.red)
            }
        }
        .padding(15)
        .background(Color.white)
        .cornerRadius(10)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.gray.opacity(0.5))
        
  
    }
}

#Preview {
    ContentViewFilm()
}
