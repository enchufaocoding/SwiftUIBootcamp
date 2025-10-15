//
//  Restaurant.swift
//  UIFormBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 29/9/25.
//

import SwiftUI

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    var type: String
    var phone: String
    var image: String
    var priceLevel: Int
    var isFavorite: Bool = false
    var isCheckIn: Bool = false
}

