//
//  ContentView.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 21.02.25.
//

import SwiftUI

struct ContentView: View {
    let items: [PhoneModel]
    @State var isHeartPinkSelected: Bool = false

    var body: some View {
        HStack {
            ForEach(items, id: \.name) { item in
                ItemCard(item: item)
            }
        }
        .padding(.leading, 5)
        .padding(.trailing, 5)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.gray.opacity(0.5))
        
  
    }
}

#Preview {
    let items = [
        PhoneModel(name: "Apple iPhone 16 Pro 128GB", price: 1099, specialOfferPrice: 999, image: "Image_iPhone16pro"),
        PhoneModel(name: "Apple iPhone 16 Pro", price: 999, specialOfferPrice: 899, image: "Image_iPhone16")
    ]
    ContentView(items: items)
}

struct ItemCard: View {
//@State - сохранить состояние
//@Binding - передает состояние

    @State var item: PhoneModel
    @State var isHeartSelected: Bool = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Image(item.image)
                    .resizable()
                    .frame(maxWidth: 170, maxHeight: 200, alignment: .leading)
                HStack {
                    if let specialOfferPrice = item.specialOfferPrice {
                        Text(specialOfferPrice, format: .currency(code: "USD"))
                            .bold()
                            .font(.headline)
                        itemPrice
                            .strikethrough()
                    } else {
                        itemPrice
                    }
                }
                .frame(width: 165, height: 50, alignment: .leading)
                
                Text(item.name)
                    .frame(width: 170, height: 20, alignment: .leading)
                    .font(.caption)
            }
            
            Button(action: {
                item.isFavorite.toggle()
            })  {
                ZStack {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 3)
                    Image(systemName: item.isFavorite ? "heart.fill" : "heart")
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
    }
    
    private var itemPrice: some View {
        Text(item.price, format: .currency(code: "USD"))
            .font(.caption)
            .foregroundColor(.gray)
    }
}
