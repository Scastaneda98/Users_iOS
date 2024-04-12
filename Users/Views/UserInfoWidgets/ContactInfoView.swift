//
//  ContactInfoView.swift
//  Users
//
//  Created by Santiago Castaneda on 12/04/24.
//

import SwiftUI

struct ContactInfoView: View {
    let email: String
    let phone: String
    let website: String
    
    var body: some View {
        GroupBox("Contact information") {
            VStack(alignment: .leading) {
                Text(email)
                Text(phone)
                Text(website)
            }
        }.padding(.horizontal)
    }
}

