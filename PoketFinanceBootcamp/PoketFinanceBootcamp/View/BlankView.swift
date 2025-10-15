//
//  BlankView.swift
//  PoketFinanceBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 6/10/25.
//

import SwiftUI

struct BlankView : View {
    
    var bgColor: Color
    
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(bgColor)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BlankView(bgColor: .black)
}
