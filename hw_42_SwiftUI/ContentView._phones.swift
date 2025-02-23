//
//  ContentView.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 21.02.25.
//

import SwiftUI

struct ContentView: View {
    @State var isHeartSelected: Bool = false
    @State var isHeartPinkSelected: Bool = false

    var body: some View {
        HStack {
            //MARK: 1
            ZStack(alignment: .topTrailing) {
                VStack {
                    Image("Image_iPhone16pro")
                        .resizable()
                        .frame(maxWidth: 170, maxHeight: 200, alignment: .leading)
                    HStack {
                        Text("$999")
                            .bold()
                            .font(.system(size: 30))
                        Text("$1099")
                            .font(.system(size: 17))
                            .foregroundColor(.gray)
                            .strikethrough()
                    }
                    .frame(width: 165, height: 50, alignment: .leading)
                    
                    Text("Apple iPhone 16 Pro 128GB")
                        .frame(width: 170, height: 20, alignment: .leading)
                        .font(.system(size: 12))
                }
                
                Button(action: {
                    self.isHeartSelected.toggle()
                })  {
                    ZStack {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 3)
                        Image(systemName: isHeartSelected ? "heart.fill" : "heart")
                            .resizable()
                            .frame(width: 15, height: 12)
                            .foregroundColor(.red)
                    }
                }
                .padding(.leading)
            }
            .padding(10)
            .background(Color.white)
            .cornerRadius(10)
            
            //MARK: 2
            ZStack(alignment: .topTrailing) {
                VStack {
                    Image("Image_iPhone16")
                        .resizable()
                        .frame(maxWidth: 170, maxHeight: 200, alignment: .trailing)
                    HStack {
                        Text("$899")
                            .bold()
                            .font(.system(size: 30))
                        Text("$959")
                            .font(.system(size: 17))
                            .foregroundColor(.gray)
                            .strikethrough()
                    }
                    .frame(width: 165, height: 50, alignment: .leading)
                    
                    Text("Apple iPhone 16 128GB")
                        .frame(width: 170, height: 20, alignment: .leading)
                        .font(.system(size: 12))
                }
    
                Button(action: {
                    self.isHeartPinkSelected.toggle()
                })  {
                    ZStack {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 3)
                        Image(systemName: isHeartPinkSelected ? "heart.fill" : "heart")
                            .resizable()
                            .frame(width: 15, height: 12)
                            .foregroundColor(.red)
                    }
                }
            }
            .padding(10)
            .background(Color.white)
            .cornerRadius(10)
        }
        .padding(.leading, 5)
        .padding(.trailing, 5)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.gray.opacity(0.5))
        
  
    }
}

#Preview {
    ContentView()
}
