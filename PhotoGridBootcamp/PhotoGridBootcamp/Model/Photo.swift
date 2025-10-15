//
//  Photo.swift
//  PhotoGridBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 9/10/25.
//

import Foundation

struct Photo: Identifiable {
    var id = UUID()
    let name: String
}

let samplePhotos = (1...20).map { Photo(name: "coffee-\($0)") }
