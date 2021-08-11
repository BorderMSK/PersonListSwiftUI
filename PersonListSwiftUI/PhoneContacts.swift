//
//  PhoneContacts.swift
//  PersonListSwiftUI
//
//  Created by Igor Makeev on 11.08.2021.
//

import SwiftUI

struct PhoneContacts: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text(person.fullname)) {
                        ContactsRow(image: "", contact: person.phoneNumber)
                        ContactsRow(image: "", contact: person.email)
                    }
                }
            }
            .navigationTitle("Section List")
        }
    }
}

struct PhoneContacts_Previews: PreviewProvider {
    static var previews: some View {
        PhoneContacts(persons: Person.getPerson())
    }
}
