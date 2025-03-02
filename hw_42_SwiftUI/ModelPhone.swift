//
//  ModelPhone.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 1.03.25.
//
import Foundation

struct PhoneModel: Identifiable {
    var id = UUID()
    
    var name: String
    var price: Double
    var specialOfferPrice: Double?
    var image: String
    var isFavorite: Bool = false
}
