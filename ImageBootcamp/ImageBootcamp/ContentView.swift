//
//  ContentView.swift
//  ImageBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 17/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            /* Usando SF SYMBOL
            Image(systemName: "cloud.heavyrain")
                .font(.system(size: 100))
                .foregroundStyle(Color.blue)
                .shadow(color: .gray, radius: 10, x: 0, y: 10)
            */
            
            /* Usando Image v1
            Image("paris")
               .resizable()
             //  .ignoresSafeArea(.container, edges: .bottom)
            //   .scaledToFit()
               .aspectRatio(contentMode: .fill)
               .frame(width: 300)
            //   .clipped()
             //  .clipShape(.circle)
               .clipShape(Circle())
            //   .opacity(0.5)
               .overlay(
                    Image(systemName: "heart.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .opacity(0.5)
               )
             */
            
            /* Usando Image v2
            Image("paris")
               .resizable()
               .aspectRatio(contentMode: .fit)
               .overlay(
                    Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveable feast.\n\n- Ernest Hemingway")
                            .fontWeight(.heavy)
                            .font(.system(.headline, design: .rounded))
                            .foregroundStyle(.white)
                            .padding()
                            .background(Color.black)
                        .cornerRadius(10)
                        .opacity(0.8)
                        .padding(),
                    
                    alignment: .top //parametro que es opcional y pertenece al Overlay.
               )
            */
            
            /* Usando Image v3
            Image("paris")
               .resizable()
               .aspectRatio(contentMode: .fit)
               .overlay(
                //    Rectangle()
                       // .foregroundStyle(.black) // puedo usar como filtros cambiando el color por ejemplo a .pink
                    Color.blue
                        .opacity(0.4)
               )
            */
            
            /* Usando Image v4
            Image("paris")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .overlay(
                    Color.black
                        .opacity(0.4)
                        .overlay(
                            Text("Paris")
                                .font(.largeTitle)
                                .fontWeight(.black)
                                .foregroundStyle(.white)
                                .frame(width: 200)
                        )
                )
            */
            
            /* Usando Sf SYMBOLS v2
            Image(systemName: "square.and.arrow.down")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.indigo, .yellow, .gray)
                .font(.system(size: 200))
             */
            
            // Usando Sf SYMBOLS v2¡3
            Image(systemName: "slowmo", variableValue: 0.6)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.indigo)
                .font(.largeTitle)
        }
    }
}

#Preview {
    ContentView()
}
