//
//  TextFieldDemo.swift
//  TextEditorBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 9/10/25.
//


import SwiftUI

struct TextFieldDemo: View {
    @State private var comment = ""
    
    var body: some View {
        TextField("Comment", text: $comment, prompt: Text("Please input your comment"), axis: .vertical)
            .padding()
            .background(.green.opacity(0.2))
            .cornerRadius(5.0)
            .padding()
            .lineLimit(3...5)
    }
}

#Preview {
    TextFieldDemo()
}
