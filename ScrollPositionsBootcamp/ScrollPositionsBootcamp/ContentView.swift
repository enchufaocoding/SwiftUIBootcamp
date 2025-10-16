//
//  ContentView.swift
//  ScrollPositionsBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 16/10/25.
//

import SwiftUI

struct ContentView: View {
    let bgColors: [Color] = [ .yellow, .blue, .orange, .indigo, .green ]
    @State private var scrollID: Int?
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0...50, id: \.self) { index in
                    bgColors[index % 5]
                        .frame(height: 100)
                        .overlay {
                            Text("\(index)")
                                .foregroundStyle(.white)
                                .font(.system(.title, weight: .bold))
                        }
                }
            }
            .scrollTargetLayout()
        }
        .contentMargins(.horizontal, 10.0, for: .scrollContent)
        .scrollPosition(id: $scrollID)
        .onChange(of: scrollID) { oldValue, newValue in
            print(newValue ?? "")
        }
    }
}

#Preview {
    ContentView()
}
