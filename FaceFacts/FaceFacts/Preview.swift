//
//  Preview.swift
//  FaceFacts
//
//  Created by Yuliya Grygoryeva on 1/7/24.
//

import Foundation
import SwiftData

@MainActor
struct Previewer {
    let container: ModelContainer
    let event: Event
    let person: Person

    init() throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        container = try ModelContainer(for: Person.self, configurations: config)
        
        event = Event(name: "Dimension Jump", location: "New York")
        person = Person(name: "Dave", emailAddress: "e-mail", details: "details")
        
        container.mainContext.insert(person)
    }
}
