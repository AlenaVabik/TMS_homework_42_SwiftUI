//
//  CastAndCrewCard.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 2.03.25.
//

import SwiftUI

struct CastAndCrewCard: View {
    var item: CastAndCrewModel

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
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                Text(item.profession)
                    .font(.caption)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            }
        }
        .padding(.trailing, 10)
    }
}
