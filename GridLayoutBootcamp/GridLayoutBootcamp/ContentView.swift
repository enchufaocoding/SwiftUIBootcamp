//
//  ContentView.swift
//  GridLayoutBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 9/10/25.
//

import SwiftUI

struct ContentView: View {
    
    private var symbols = ["keyboard","hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "pencil","mic", "plus.bubble", "video"]
    
    private var colors: [Color] = [.yellow, .green, .purple]
    
    /* esta version controla cada grid por separado
    private var gridItemLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    */
    
    /*
    // esta version utiliza un solo tipo de GridItem [todos flexibles]
    private var gridItemLayout = Array(repeating: GridItem(.flexible(), spacing: 0), count: 3)
    */
    
    // private var sixColumnGrid: [GridItem] = Array(repeating: .init(.flexible()), count: 6)
    // private var gridItemLayout: [GridItem] = [GridItem(.adaptive(minimum: 50))]
    
    /*
    // Diferentes Tamaños [100] y [150]
     private var gridItemLayout = [GridItem(.fixed(100)), GridItem(.fixed(150))]
    */
    
    private var gridItemLayout = [GridItem(.fixed(150)), GridItem(.adaptive(minimum: 50))]
    
   
    var body: some View {
        // LAZYHGRID
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItemLayout, spacing: 20) {
                ForEach(0..<9999, id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }

        
        /*
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                ForEach(0..<9999, id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                    /* $0 % symbols.count
                     El operador % es el módulo (resto de la división).
                     Esto sirve para volver al inicio del arreglo cuando se llegue al final.
                     */
                        .font(.system(size: 30))
                        // .frame(width: 50, height: 50)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }
        */
    }
     
}

#Preview {
    ContentView()
}


/* Vertical Grid
 ScrollView {
    LazyVGrid(columns: threeColumGrid) {
        
    }
}
*/

/* horizontal Grid
ScrollView(.horizontal) {
    LazyHGrid(rows: threeColumGrid) {
        
    }
}
 */

/* LAZYHGRID
 El uso de LazyHGrid es similar al de LazyVGrid, excepto que LazyHGrid toma un parámetro que
 necesita para incrustarlo en una vista de desplazamiento horizontal. Además, filas nombradas
 en lugar de columnas.
 */
