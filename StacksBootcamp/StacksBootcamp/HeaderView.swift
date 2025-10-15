//
//  HeaderView.swift
//  StacksBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 18/9/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 2) {
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}
