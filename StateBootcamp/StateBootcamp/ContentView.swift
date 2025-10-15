//
//  ContentView.swift
//  StateBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 21/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying: Bool = false
 //   @State private var counter: Int = 0
    
    @State private var blueCounter: Int = 0
    @State private var greenCounter: Int = 0
    @State private var redCounter: Int = 0
    
    @State private var totalCounter: Int = 0
    
    var body: some View {
        
        /*
            Button {
                // Switch between the play and stop button
                isPlaying.toggle()
            } label: {
                Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 150))
                    .foregroundStyle(isPlaying ? .red : .green)
            }
        */
        
        VStack {
            Text("\(totalCounter)")
                .font(.system(size: 200, weight: .bold, design: .rounded))
            HStack {
                CounterButton(counter: $blueCounter, totalCounter: $totalCounter, color: .blue)
                CounterButton(counter: $greenCounter, totalCounter: $totalCounter, color: .green)
                CounterButton(counter: $redCounter,totalCounter: $totalCounter, color: .red)
            }
        }

        
    }
}

struct CounterButton: View {
    @Binding var counter: Int
    @Binding var totalCounter: Int
    
    var color: Color
    
    var body: some View {
        Button {
            if Color.blue == color {
                counter += 1
                totalCounter += 1
            } else if Color.green == color {
                counter += 1
                totalCounter += 1
            } else if Color.red == color {
                counter += 1
                totalCounter += 1
            }
            
            
        } label: {
            Circle()
                .frame(width: 120, height: 120)
                .foregroundStyle(color)
                .overlay {
                    Text("\(counter)")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)
                }
        }
    }
}

#Preview {
    ContentView()
}
