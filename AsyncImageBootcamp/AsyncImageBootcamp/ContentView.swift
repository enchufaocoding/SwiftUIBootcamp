//
//  ContentView.swift
//  AsyncImageBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 14/10/25.
//

import SwiftUI

struct ContentView: View {
    
    let imageURL = "https://link.appcoda.com/testimage"
    
    var body: some View {
        
        AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring())) { phase in
            switch phase {
            case .empty:
                Color.purple.opacity(0.1)
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .transition(.slide)
            case .failure(_):
                Image(systemName: "exclamationmark.icloud")
                    .resizable()
                    .scaledToFit()
            @unknown default:
                Image(systemName: "exclamationmark.icloud")
            }
        }
        .frame(width: 300, height: 500)
        .cornerRadius(20)
        
        /*
        AsyncImage(url: URL(string: imageURL)) { phase in
            switch phase {
            case .empty:
                Color.purple.opacity(0.1)
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
            case .failure(_):
                Image(systemName: "exclamationmark.icloud")
                    .resizable()
                    .scaledToFit()
            @unknown default:
                Image(systemName: "exclamationmark.icloud")
            }
        }
        .frame(width: 300, height: 300)
        .cornerRadius(20)
        */
        
        /*
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            Color.purple.opacity(0.1)
        }
        .frame(width: 300, height: 500)
        .cornerRadius(20)
        */
    }
}

#Preview {
    ContentView()
}
