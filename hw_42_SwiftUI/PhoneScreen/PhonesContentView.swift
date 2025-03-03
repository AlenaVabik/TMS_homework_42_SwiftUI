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
            ForEach(items, id: \.id) { item in
                Section {
                    ItemCard(item: item)
                }
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


