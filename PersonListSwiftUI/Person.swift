//
//  Person.swift
//  PersonListSwiftUI
//
//  Created by Igor Makeev on 11.08.2021.
//

import Foundation

struct Person: Identifiable {
    var id: String
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person]{
        
        let data = DataManager()
        var persons: [Person] = []
        
        let names = data.name.shuffled()
        let surnames = data.surname.shuffled()
        let phoneNumbers = data.phoneNumber.shuffled()
        let emails = data.email.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phoneNumbers.count)
        
        for index in 0..<iterationCount{
            let person = Person(id: names[index], name: names[index], surname: surnames[index], phoneNumber: phoneNumbers[index], email: emails[index])
            
            persons.append(person)
        }
        return persons
    }
}
