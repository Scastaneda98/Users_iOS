//
//  UserInformationView.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import SwiftUI

struct UserInformationView: View {
    let name: String
    let username: String
    
    var body: some View {
        GroupBox("") {
            Text(name)
                .font(.title)
                .fontWeight(.bold)
            Text(username)
        }.padding(.horizontal)
        
    }
}
