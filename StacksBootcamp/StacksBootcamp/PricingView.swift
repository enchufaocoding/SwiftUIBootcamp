//
//  PricingView.swift
//  StacksBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 18/9/25.
//

import SwiftUI

struct PricingView: View {
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    var ciclo: String = "per Month"
    var iconPlan: String?
    
    var body: some View {
        VStack {
            if let icon = iconPlan {
                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            }
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text(ciclo)
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}

#Preview {
    PricingView(title: "Basic", price: "$9", textColor: Color.white, bgColor: Color.pink)
}
