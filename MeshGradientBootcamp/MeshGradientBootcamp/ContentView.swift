//
//  ContentView.swift
//  MeshGradientBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 18/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Learn SwiftUI")
            .font(.system(size: 50, weight: .black, design: .rounded))
            .foregroundStyle(
                MeshGradient(width: 3, height: 3, points: [
                    .init(x: 0, y: 0), .init(x: 0.5, y: 0), .init(x: 1, y: 0),
                    .init(x: 0, y: 0.5), .init(x: 0.5, y: 0.5), .init(x: 1, y: 0.5),
                    .init(x: 0, y: 1), .init(x: 0.5, y: 1), .init(x: 1, y: 1)
                ], colors: [
                    .gray, .purple, .indigo,
                    .orange, .cyan, .blue,
                    .yellow, .green, .teal
                ])
            )
        
        Spacer()
        
        Image(systemName: "sun.horizon.fill")
            .font(.system(size: 200))
            .foregroundStyle(
                MeshGradient(width: 3, height: 3, points: [
                    .init(x: 0, y: 0), .init(x: 0.5, y: 0), .init(x: 1, y: 0),
                    .init(x: 0, y: 0.5), .init(x: 0.5, y: 0.5), .init(x: 1, y: 0.5),
                    .init(x: 0, y: 1), .init(x: 0.5, y: 1), .init(x: 1, y: 1)
                ], colors: [
                    .gray, .purple, .indigo,
                    .orange, .cyan, .blue,
                    .yellow, .green, .teal
                ])
            )
    }
}

struct SimpleMeshGradientView: View {
    var body: some View {
        MeshGradient(width: 3, height: 3, points: [
            .init(x: 0, y: 0), .init(x: 0.5, y: 0), .init(x: 1, y: 0),
            .init(x: 0, y: 0.5), .init(x: 0.5, y: 0.5), .init(x: 1, y: 0.5),
            .init(x: 0, y: 1), .init(x: 0.5, y: 1), .init(x: 1, y: 1)
        ], colors: [
            .gray, .purple, .indigo,
            .orange, .cyan, .blue,
            .yellow, .green, .teal
        ])
        .ignoresSafeArea()
        
        
    }
}

struct AnimatedMeshGradientView: View {
    let animationDuration: TimeInterval = 10.0
    
    let baseColors: [Color] = [
        .gray, .purple, .indigo,
        .orange, .cyan, .blue,
        .yellow, .green, .teal
    ]
    
    var body: some View {
        TimelineView(.animation) { timeline in
            Rectangle()
                .fill(
                    
                    MeshGradient(width: 3, height: 3, points: [
                        .init(x: 0, y: 0), .init(x: 0.5, y: 0), .init(x: 1, y: 0),
                        .init(x: 0, y: 0.5), .init(x: 0.5, y: 0.5), .init(x: 1, y: 0.5),
                        .init(x: 0, y: 1), .init(x: 0.5, y: 1), .init(x: 1, y: 1)
                    ], colors: animatedColors(at: timeline.date))
                    
                )
                .ignoresSafeArea()
        }
    }
    
    private func animatedColors(at date: Date) -> [Color] {
        let phase = CGFloat(date.timeIntervalSinceReferenceDate.remainder(dividingBy: animationDuration) / animationDuration)
        
        return baseColors.enumerated().map { index, color in
            let nextColor = baseColors[(index + 1) % baseColors.count]
            return color.blend(with: nextColor, amount: phase)
        }
    }
}

#Preview("Animated Mesh Gradient") {
    AnimatedMeshGradientView()
}

#Preview("Simple Mesh Gradient") {
    SimpleMeshGradientView()
}

#Preview("ContentView") {
    ContentView()
}

extension Color {
    func blend(with other: Color, amount: CGFloat) -> Color {
        let ratio = max(0, min(1, amount))  // Ensure amount is between 0 and 1
        return Color(
            red: lerpColor(self.red, other.red, ratio),
            green: lerpColor(self.green, other.green, ratio),
            blue: lerpColor(self.blue, other.blue, ratio)
        )
    }
    
    private func lerpColor(_ from: Double, _ to: Double, _ ratio: CGFloat) -> Double {
        return from + (to - from) * Double(ratio)
    }
    
    // Helper properties to get color components
    private var red: Double { components.red }
    private var green: Double { components.green }
    private var blue: Double { components.blue }
    
    private var components: (red: Double, green: Double, blue: Double) {
        guard let components = UIColor(self).cgColor.components else {
            return (0, 0, 0)  // Default to black if conversion fails
        }
        return (Double(components[0]), Double(components[1]), Double(components[2]))
    }
}

