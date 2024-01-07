//
//  ContentView.swift
//  FaceFacts
//
//  Created by Yuliya Grygoryeva on 1/6/24.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @State private var path = [Person]()
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack(path: $path) {
            PeopleView()
                .navigationTitle("FaceFacts")
                .navigationDestination(for: Person.self) { person in
                    EditPersonView(person: person)
                }
            
                .toolbar {
                    Button("Add person", systemImage: "plus", action: addPerson)
                }
                .searchable(text: $searchText)
        }
    }
    
    func addPerson() {
        let person = Person(name: "", emailAddress: "", details: "")
        modelContext.insert(person)
        path.append(person)
    }
}

#Preview {
    ContentView()
}
