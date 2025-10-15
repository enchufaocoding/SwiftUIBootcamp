//
//  RestaurantDetailView.swift
//  UINavigationListBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 28/9/25.
//

import SwiftUI

struct RestaurantDetailView: View {
    
    @Environment(\.dismiss) var dismiss // Variable usada para el boton dismiss | iOS 15 en adelante.-
    // @Environment(\.presentationMode) var presentationMode // Variable usada para el boton dismiss | iOS 15 hacia atras.-
    
    var restaurant: Restaurant
    
    var body: some View {
        VStack {
            Image(restaurant.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(restaurant.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
            Spacer()
        }
        
        // esconder el boton back por defecto en SwiftUI
        .navigationBarBackButtonHidden()
        
        .toolbar { // crear boton en el lado deseado y personalizar
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss() // Metodo Usado para el boton dismiss | iOS 15 hacia adelante
                    // presentationMode.wrappedValue.dismiss() // Metodo Usado para el boton dismiss | iOS 15 hacia atras.-
                    
                } label: {
                    Text("\(Image(systemName: "chevron.left")) \(restaurant.name)")
                        .foregroundStyle(Color(.red))
                }

            }
        }
    }
}

#Preview {
    RestaurantDetailView(restaurant: Restaurant(name: "Royal Oak", image: "royaloak"))
}
