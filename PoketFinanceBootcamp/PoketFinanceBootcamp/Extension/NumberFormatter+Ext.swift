//
//  NumberFormatter+Ext.swift
//  PoketFinanceBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 6/10/25.
//

import Foundation

extension NumberFormatter {
    static func currency(from value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let formattedValue = formatter.string(from: NSNumber(value: value)) ?? ""
        
        return "$" + formattedValue
    }
}
