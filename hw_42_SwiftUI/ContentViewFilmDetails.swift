//
//  ContentView.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 21.02.25.
//

import SwiftUI

struct ContentViewFilmDetails: View {
    @State var isHeartSelected: Bool = false
    let items: [CastAndCrewModel]

    var body: some View {
        Form {
            HStack {
                Text("Movie detail")
                    .font(.headline)
                    .frame(width: .infinity, alignment: .center)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
                Button(action: {
                    self.isHeartSelected.toggle()
                })  {
                    Image(systemName: isHeartSelected ? "heart.fill" : "heart")
                        .resizable()
                        .foregroundColor(.red)
                }
                .frame(maxWidth: 15, maxHeight: 12, alignment: .trailing)
            }
            
            Image("Image_miyadzaki")
                .resizable()
                .frame(maxWidth: 150, maxHeight: 200, alignment: .leading)
                .cornerRadius(10)
                .padding(.trailing, 10)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
            Text("Spirited away")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .font(.headline)
            HStack {
                Label("31 Dec. 2002", systemImage: "calendar")
                Label("125 Minutes", systemImage: "clock.fill")
                Label("Action", systemImage: "film.fill")
            }
            .font(.footnote)
            .foregroundColor(.gray)
            .frame(maxWidth: .infinity, alignment: .center)
            
            HStack {
                Group {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
                .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            
            Text("Story Line")
                .font(.body)
            
            Text("Тихиро с мамой и папой переезжает в новый дом. Заблудившись по дороге, они оказываются в странном пустынном городе, где их ждет великолепный пир. Родители с жадностью набрасываются на еду и к ужасу девочки превращаются в свиней, став пленниками злой колдуньи Юбабы. Теперь, оказавшись одна среди волшебных существ и загадочных видений, Тихиро должна придумать, как избавить своих родителей от чар коварной старухи.")
                .font(.caption)
            
            Text("Cast and Crew")
                .font(.body)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(items, id: \.id) { item in
                        CastAndCrewCard(item: item)
                    }
                }
            }
            
            Button("Watch now") {
                
            }
            
            .cornerRadius(20)
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(10)
        }
    }
        
    
}

#Preview {
    let items = [
        CastAndCrewModel(image: "HayaoMiyazaki", name: "Hayao Miyazaki", profession: "Director"),
        CastAndCrewModel(image: "ToshioSuzuki", name: "Toshio Suzuki", profession: "Produsser"),
        CastAndCrewModel(image: "JoeHisaishi", name: "Joe Hisaishi", profession: "Produsser")
    ]
    ContentViewFilmDetails(items: items)
}

struct CastAndCrewCard: View {
    @State var item: CastAndCrewModel

    var body: some View {
        HStack {
            
            Image(item.image)
                .resizable()
                .frame(maxWidth: 50, maxHeight: 50, alignment: .leading)
                .cornerRadius(25)
            VStack {
                Text(item.name)
                    .font(.caption)
                    .bold()
                Text(item.profession)
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)

            }
        }
        .frame(maxWidth: 150, alignment: .center)
        .padding(.trailing, 10)
    }
}

struct CastAndCrewModel: Identifiable {
    var id = UUID()
    
    var image: String
    var name: String
    var profession: String
}


//MARK: ScrollView

//            ScrollView(.vertical) {
//                ForEach(items, id: \.id) { item in
//                    ItemCard(item: item)
//                }
//            }
            
//MARK: List
//            List(items, id: \.id) { item in
//                ItemCard(item: item)
//            }
