//
//  ContentView.swift
//  AnyLayoutBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 16/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var changeLayout = false
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        let layout = horizontalSizeClass == .regular ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
        // let layout = changeLayout ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
        layout {
            Image(systemName: "bus")
                .font(.system(size: 80))
                .frame(width: 120, height: 120)
                .background(in: RoundedRectangle(cornerRadius: 5.0))
                .backgroundStyle(.green)
                .foregroundStyle(.white)
            Image(systemName: "ferry")
                .font(.system(size: 80))
                .frame(width: 120, height: 120)
                .background(in: RoundedRectangle(cornerRadius: 5.0))
                .backgroundStyle(.yellow)
                .foregroundStyle(.white)
            Image(systemName: "scooter")
                .font(.system(size: 80))
                .frame(width: 120, height: 120)
                .background(in: RoundedRectangle(cornerRadius: 5.0))
                .backgroundStyle(.indigo)
                .foregroundStyle(.white)
        }
        
        .animation(.default, value: changeLayout)
        .onTapGesture {
            changeLayout.toggle()
        }
    }
}

#Preview {
    ContentView()
}
