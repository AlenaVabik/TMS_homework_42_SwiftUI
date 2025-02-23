//
//  ContentView.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 21.02.25.
//

import SwiftUI

struct ContentView: View {
    @State var isHeartSelected: Bool = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
        VStack {
            Image("Image_iPhone16pro")
                .resizable()
                .foregroundStyle(.tint)
                .frame(maxWidth: 250, maxHeight: 320, alignment: .center)
            HStack {
                Text("$999")
                    .bold()
                    .font(.system(size: 35))
                //                    .padding(.leading)
                Text("$1099")
                    .font(.system(size: 20))
                    .foregroundColor(.gray)
                    .strikethrough()
            }
            .frame(width: 240, height: 50, alignment: .leading)
            
            Text("Apple iPhone 16 Pro 128GB")
                .frame(width: 240, height: 20, alignment: .leading)
            
            
        }
        Button(action: {
            self.isHeartSelected.toggle()
        })  {
            ZStack {
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                if isHeartSelected {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 30, height: 27)
                        .foregroundColor(.red)
                } else {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 30, height: 27)
                        .foregroundColor(.red)
                }
            }
        }
        .offset(x: 20, y: 0)
//        .padding()
    }
                   }
}

#Preview {
    ContentView()
}
