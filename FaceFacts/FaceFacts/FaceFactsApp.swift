//
//  FaceFactsApp.swift
//  FaceFacts
//
//  Created by Yuliya Grygoryeva on 1/6/24.
//

import SwiftData
import SwiftUI

@main
struct FaceFactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
