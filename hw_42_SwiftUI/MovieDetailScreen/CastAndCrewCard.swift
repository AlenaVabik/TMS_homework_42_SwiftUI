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
        GeometryReader { geometry in
            
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
            .frame(maxWidth: geometry.size.width, alignment: .center)
            .padding(.trailing, 10)
        }
        
    }
}
