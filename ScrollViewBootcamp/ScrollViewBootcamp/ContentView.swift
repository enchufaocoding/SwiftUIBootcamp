//
//  ContentView.swift
//  ScrollViewBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 18/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("monday august 25, 2025".uppercased())
                Spacer()
            }
            HStack {
                Text("Your Reading")
                    .font(.system(.largeTitle, design: .rounded))
                    .bold(true)
                Spacer()
            }

        }.padding(.horizontal, 10)
        
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                Group {
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
                }
                .frame(width: 300)
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
