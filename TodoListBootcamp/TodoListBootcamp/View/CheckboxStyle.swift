//
//  CheckboxStyle.swift
//  TodoListBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 6/10/25.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        
        return HStack {
            
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .purple : .gray)
                .font(.system(size: 20, weight: .bold, design: .default))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            
            
            configuration.label
                
            
        }
        
    }
}
