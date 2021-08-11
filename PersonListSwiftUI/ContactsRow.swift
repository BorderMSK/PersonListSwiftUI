//
//  ContactsRow.swift
//  PersonListSwiftUI
//
//  Created by Igor Makeev on 11.08.2021.
//

import SwiftUI

struct ContactsRow: View {
    
    let image: String
    let contact: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
            Text(contact)
        }
    }
}
