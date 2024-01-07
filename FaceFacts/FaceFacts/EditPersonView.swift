//
//  EditPersonView.swift
//  FaceFacts
//
//  Created by Yuliya Grygoryeva on 1/7/24.
//

import SwiftUI

struct EditPersonView: View {
    @Bindable var person: Person
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $person.name)
                    .textContentType(.name)
            }
        }
        .navigationTitle("Edit person")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditPersonView()
//}
