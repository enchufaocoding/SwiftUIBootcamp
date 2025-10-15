//
//  PoketFinanceBootcampApp.swift
//  PoketFinanceBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 6/10/25.
//

import SwiftUI
import SwiftData

@main
struct PoketFinanceBootcampApp: App {
    var body: some Scene {
        WindowGroup {
            DashboardView()
        }
        .modelContainer(for: PaymentActivity.self)
    }
}
