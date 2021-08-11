//
//  ContentView.swift
//  PersonListSwiftUI
//
//  Created by Igor Makeev on 11.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getPerson()
    
    var body: some View {
        TabView {
            ContactsList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3").resizable()
                    Text("Contacts")
                }
            PhoneContacts(persons: persons)
                .tabItem {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                    Text("Section contacts")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
