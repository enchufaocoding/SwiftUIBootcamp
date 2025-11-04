//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Jose Alberto Rosario Castillo on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var recordBegin: Bool = false
    @State private var recording: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: recordBegin ? 30 : 5)
                .frame(width: recordBegin ? 60 : 250, height: 60)
                .foregroundStyle(recordBegin ? .red : .green)
                .overlay(
                    Image(systemName: "mic.fill")
                        .font(.system(.title))
                        .foregroundStyle(.white)
                        .scaleEffect(recording ? 0.7 : 1)
                )
            
            RoundedRectangle(cornerRadius: recordBegin ? 35 : 10)
                .trim(from: 0, to: recordBegin ? 0.0001 : 1)
                .stroke(lineWidth: 5)
                .frame(width: recordBegin ? 70 : 260, height: 70)
                .foregroundStyle(.green)
        }
        .onTapGesture {
            withAnimation (.default) {
                recordBegin.toggle()
            }
            
            withAnimation (.default.repeatForever(autoreverses: true).delay(0.5)) {
                recording.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
