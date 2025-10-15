//
//  ContentView.swift
//  TextEditorBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 9/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var inputText = ""
    @State private var wordCount: Int = 0
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            TextEditor(text: $inputText)
                .font(.body)
                .padding()
                .padding(.top, 20)
                .onChange(of: inputText) {
                    let words = inputText.split { $0 == " " || $0.isNewline }
                    self.wordCount = words.count
                }
            
            Text("\(wordCount) words")
                .font(.headline)
                .foregroundColor(.secondary)
                .padding(.trailing)
        }
    }
}

#Preview {
    ContentView()
}

