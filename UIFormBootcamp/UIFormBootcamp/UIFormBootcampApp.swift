//
//  UIFormBootcampApp.swift
//  UIFormBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 29/9/25.
//

import SwiftUI

@main
struct UIFormBootcampApp: App {
    
    var settingStore = SettingStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(settingStore)
        }
    }
}
