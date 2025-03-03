//
//  File.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 2.03.25.
//
import SwiftUI


struct GenderView: View {
    var item: GenderModel
    @Binding var selectedGender: String?
       
       var body: some View {
           Button(action: {
//не работает, решить
               if selectedGender == item.name {
                   selectedGender = nil
               } else {
                   selectedGender = item.name
               }
//            item.isFavorite.toggle()
        }) {
            HStack {
                Image(systemName: selectedGender == item.name ? "checkmark.circle.fill" : "circle")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.indigo)
                Text(item.name)
                    .font(.body)
            }
            .padding([.top, .bottom, .leading ], 15)
            .padding(.trailing, 50)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(25)
        }
    }
}
