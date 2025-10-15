//
//  ContentView.swift
//  TextBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 17/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("iOS 26, iPadOS 26, macOS Tahoe 26, tvOS 26, visionOS 26, and watchOS 26 will soon be available to customers worldwide — which means you can now submit apps and games that take advantage of Apple’s broadest design update ever.")
                .fontWeight(.bold)
               // .font(.title)
               // .font(.system(.title, design: .rounded))
               // .font(.system(size: 20))
                .font(.custom("Nunito-Regular", size: 20))
                .foregroundStyle(.green)
                .multilineTextAlignment(.center)
               // .lineLimit(6)
              //  .truncationMode(.head)
                .lineSpacing(10)
                .padding()
                // .rotationEffect(Angle(degrees: 45))
               // .rotationEffect(Angle(degrees: 20), anchor: UnitPoint(x: 0, y: 0)) // Anchor especifica el punto de rotacion.
                .rotation3DEffect(Angle(degrees: 60), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .gray, radius: 2, x: 0, y: 15)
        }
    }
}

#Preview {
    ContentView()
}
