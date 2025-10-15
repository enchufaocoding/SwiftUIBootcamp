//
//  Photo.swift
//  SwiftUIGridViewAnimationBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 14/10/25.
//


import Foundation

struct Photo: Identifiable {
    var id = UUID()
    var name: String
}

let samplePhotos = (1...20).map { Photo(name: "coffee-\($0)") }
