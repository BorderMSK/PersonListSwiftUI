//
//  DetailContactsList.swift
//  PersonListSwiftUI
//
//  Created by Igor Makeev on 11.08.2021.
//

import SwiftUI

struct DetailContactsList: View {
    
    var person: Person
    
    var body: some View {
        ZStack {
            Form {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 200, height: 200)
                    Spacer()
                }
                ContactsRow(image: "phone", contact: person.phoneNumber)
                ContactsRow(image: "envelope.open", contact: person.email)
            }
        }
        .navigationTitle(person.fullname)
    }
}

struct DetailContactsList_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactsList(person: Person.getPerson().first!)
    }
}
