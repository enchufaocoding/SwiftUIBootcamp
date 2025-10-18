//
//  ContentView.swift
//  TextRendererBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 18/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress: Double = 0
    
    var body: some View {
        Text("This guide aims to explore every new feature and improvement in iOS 18, offering a comprehensive overview of the changes.")
            .font(.largeTitle.bold())
            .textRenderer(TypingAnimationRenderer(progress: progress))
            .padding()
            .onAppear {
                withAnimation(.easeIn(duration: 2).repeatForever(autoreverses: true)) {
                    progress = 1.0
                }
            }
    }
}

#Preview {
    ContentView()
}

struct RainbowTextBackgroundRenderer: TextRenderer {
    
    let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple]
    
    func draw(layout: Text.Layout, in context: inout GraphicsContext) {
        for (index, line) in layout.enumerated() {
            // Select a color from the rainbow array
            let color = colors[index % colors.count]
            
            // Set the color for this line
            context.fill(
                Rectangle().path(in: line.typographicBounds.rect),
                with: .color(color.opacity(0.3))
            )
            
            // Draw the text
            context.draw(line)
        }
    }
}

struct SimpleTextRenderer: TextRenderer {
    
    func draw(layout: Text.Layout, in context: inout GraphicsContext) {
        
        for (index, line) in layout.enumerated() {
            context.opacity = (index % 2 == 0) ? 0.4 : 1.0
            context.translateBy(x: 0, y: index % 2 == 0 ? -15 : 15)
            
            // Add underline for the first line
            if index == 0 {
                let lineBounds = line.typographicBounds
                let underlineY = lineBounds.rect.maxY + 2 // Adjust this value to change underline position
                let path = Path { p in
                    p.move(to: CGPoint(x: lineBounds.rect.minX, y: underlineY))
                    p.addLine(to: CGPoint(x: lineBounds.rect.maxX, y: underlineY))
                }
                context.stroke(path, with: .color(.purple.opacity(0.3)), lineWidth: 5)
            }
            
            context.draw(line)
        }
    }
}



struct TypingAnimationRenderer: TextRenderer {
    var progress: Double
    
    var animatableData: Double {
        get { progress }
        set { progress = newValue }
    }
    
    func draw(layout: Text.Layout, in context: inout GraphicsContext) {
        
        let totalCharacters = layout.reduce(0) { $0 + $1.reduce(0) { $0 + $1.count } }
        let visibleCharacters = Int(Double(totalCharacters) * progress)
        
        var drawnCount = 0
        
        for line in layout {
            for run in line {
                for glyph in run {
                    if drawnCount < visibleCharacters {
                        context.draw(glyph)
                    }
                    drawnCount += 1
                }
            }
        }
    }
}

