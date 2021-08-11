//
//  ContactsList.swift
//  PersonListSwiftUI
//
//  Created by Igor Makeev on 11.08.2021.
//

import SwiftUI

struct ContactsList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) {person in
                VStack {
                    NavigationLink(
                        destination: DetailContactsList(person: person)){
                        Text(person.fullname)
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList(persons: Person.getPerson())
    }
}
