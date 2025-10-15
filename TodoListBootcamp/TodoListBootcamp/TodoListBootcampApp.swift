//
//  TodoListBootcampApp.swift
//  TodoListBootcamp
//
//  Created by Jose Alberto Rosario Castillo on 6/10/25.
//

import SwiftUI
import SwiftData

@main
struct TodoListBootcampApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: ToDoItem.self)
    }
}
